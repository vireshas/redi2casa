class Redi2casa
  def hgetall key
    response = @db_conn.execute("select * from counters where KEY='#{key}'")
    parse_response(response)
  end
end
