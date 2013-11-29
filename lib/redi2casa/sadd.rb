class Redi2casa
  def sadd key, *members
    @db_conn.execute("update sets set members = members + {'#{members.join("','")}'} where key = '#{key}'")
  end
end
