class Redi2casa
  def hset namespace, hash
    @db_conn.execute("UPDATE sets SET key = key + ? WHERE namespace = ?", hash, namespace)
  end
end
