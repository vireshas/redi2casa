class Redi2casa
  def lrange namespace, first, last
    resp = @db_conn.execute("select values from lists where namespace='#{namespace}'")
    resp.fetch {|entry| return entry.to_hash["values"][first..last]}
  end
end