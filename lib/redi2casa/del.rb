class Redi2casa
  ## Type can be sets, hashes, lists, keyvalue
  def del key, type
    @db_conn.execute("delete from #{type} where key = '#{key}'")
  end
end
