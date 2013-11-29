class Redi2casa
  def setex key, ttl, value
    @db_conn.execute("UPDATE keyvalue using TTL #{ttl} set value = '#{value}' where key = '#{key}'")
  end
end
