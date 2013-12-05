class Redi2casa
  def hgetall key, type = "counter"
    if type.to_s == "counter"
      response = @db_conn.execute("select * from counters where KEY='#{key}'")
      response.inject({}) {|hsh, entry| hsh[entry["column1"]] = entry["value"]; hsh}
    elsif type.to_s == "hash"
      response = @db_conn.execute("select * from hashes where key = '#{key}'")
      response.inject({}) {|hsh, entry| hsh[entry["column1"]] = entry["value"]; hsh}
    end
  end
end
