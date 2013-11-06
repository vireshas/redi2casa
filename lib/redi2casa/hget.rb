class Redi2casa
  def hget namespace
    resp = @db_conn.execute("select * from sets where namespace = ?", namespace).fetch
    resp.nil? ? nil : resp.to_hash['key']
  end
end
