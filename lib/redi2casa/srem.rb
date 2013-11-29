class Redi2casa
  def srem key, member
    @db_conn.execute("update sets set members = members - {'#{member}'} where key = '#{key}'")
  end
end
