class Redi2casa
  # Supports only hashes now
  def hlen key, type = "hash"
    if type == "hash"
      response = @db_conn.execute("select count(*) from hashes where key = '#{key}'")
      parse_response(response, "count").to_i
    elsif type == "counter"
      response = @db_conn.execute("select count(*) from counters where key = '#{key}'")
      parse_response(response, "count").to_i
    end
  end
end
