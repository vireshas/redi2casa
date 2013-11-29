class Redi2casa
  def get key
    resp = @db_conn.execute("select * from keyvalue where key = '#{key}'")
    parse_response(resp, "value")
  end
end
