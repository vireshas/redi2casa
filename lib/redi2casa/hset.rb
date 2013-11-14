class Redi2casa
  def hset namespace, key, value
    @db_conn.execute("UPDATE hashes SET key = key + {'#{key}' : '#{value}'} WHERE namespace = '#{namespace}'")
  end
end
