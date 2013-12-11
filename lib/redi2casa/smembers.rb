class Redi2casa
  def smembers key
    resp = @db_conn.execute("select * from sets where key = '#{key}'")
    if resp.first
      resp.first["members"].to_a
    else
      []
    end
  end
end
