class Redi2casa
  def lpop namespace
    resp = @db_conn.execute("select values from lists where namespace='#{namespace}'")
    values = []
    resp.fetch {|entry| values = entry.to_hash["values"]}
    resp = values.shift
    lrepush(namespace, values)
    resp
  end
end
