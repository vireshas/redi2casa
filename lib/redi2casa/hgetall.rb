class Redi2casa
  def hgetall key, type = "counters"
    if type.to_s == "counters"
      response = @db_conn.execute("select * from counters where KEY='#{key}'")
      response.inject({}) {|hsh, entry| hsh[entry["column1"]] = entry["value"]; hsh}
    elsif type.to_s == "hash"
      resp = @db_conn.execute("select key from hashes where namespace = '#{key}'")
      parse_response(resp, "key")
    end
  end
end
