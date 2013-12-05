class Redi2casa
  # Supports only hashes now
  def hlen key
    response = @db_conn.execute("select count(*) from hashes where key = '#{key}'")
    parse_response(response, "count").to_i
  end
end
