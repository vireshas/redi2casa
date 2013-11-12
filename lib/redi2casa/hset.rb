class Redi2casa
  def hset namespace, key, value
    hash = {key.to_s => value.to_s}
    @db_conn.execute("UPDATE sets SET key = key + ? WHERE namespace = ?", hash, namespace)
  end
end
