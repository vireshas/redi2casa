class Redi2casa
  def smembers key
    resp = @db_conn.execute("select * from sets where key = '#{key}'")
    resp.first["members"].to_a if resp.first
  end
end
