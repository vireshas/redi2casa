class Redi2casa
  # Random text is an extra column added to make sure we have multiple entries with same key, score and value
  def zadd key, score, value
    execute("insert into sorted_sets (key, score,value, random_text) values (?, ?, ?, ?)", key.to_s, score, value, Time.now.to_i.to_s)
  end
end
