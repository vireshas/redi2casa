class Redi2casa
  def hset namespace, key, value
    hash = {key => value}
    @db_conn.execute("UPDATE sets SET key = key + ? WHERE namespace = ?", hash, namespace)
  end
end
