class Redi2casa
  # Random text is an extra column added to make sure we have multiple entries with same key, score and value
  def zadd key, score, value
    @db_conn.execute("insert into sorted_sets (key, score,value, random_text) values ('#{key}',#{score}, '#{value}', '#{Time.now.to_i}')")
  end
end
