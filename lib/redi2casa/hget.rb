class Redi2casa
  def hget namespace, key, type = "counters"
    if type.to_s == "hash"
      resp = @db_conn.execute("select key from hashes where namespace = '#{namespace}'")
      parse_response(resp, "key")
    elsif type.to_s == "counters"
      resp = @db_conn.execute("select value from counters where KEY='#{namespace}' and column1 = '#{key}'")
      parse_response(resp, "value")
    end
  end
end
