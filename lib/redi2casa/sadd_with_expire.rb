class Redi2casa
  def sadd_with_expire( key, ttl, members)
    @db_conn.execute("update sets using ttl #{ttl} set members = members + {'#{members.join("','")}'} where key = '#{key}'")
  end
end
