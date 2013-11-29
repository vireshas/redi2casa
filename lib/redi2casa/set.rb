class Redi2casa
  def set key, value
    @db_conn.execute("UPDATE keyvalue set value = '#{value}' where key = '#{key}'")
  end
end
