class Redi2casa
  def rpush namespace, data
    @db_conn.execute("UPDATE lists SET values = values + ['#{data}'] WHERE namespace = '#{namespace}'")
  end
end
