class Redi2casa
  def hkeys key, type = "counter"
    if type.to_s == "counter"
      response = @db_conn.execute("select column1 from counters where key = '#{key}'")
      response.collect {|entry| entry["column1"]}
    elsif type.to_s == "hash"
      response = @db_conn.execute("select column1 from hashes where key = '#{key}'")
      response.collect {|entry| entry["column1"]}
    end
  end
end
