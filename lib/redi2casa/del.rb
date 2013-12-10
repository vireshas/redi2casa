class Redi2casa
  ## Type can be sets, hashes, lists, keyvalue
  def del key, type
    if type == "counter"
      @db_conn.execute("delete from counters where key = '#{key}'")
    elsif type == 'keyvalue'
      @db_conn.execute("delete from keyvalues where key = '#{key}'")
    elsif type == 'hash'
      @db_conn.execute("delete from hashes where key = '#{key}'")
    elsif type == 'list'
      @db_conn.execute("delete from lists where key = '#{key}'")
    elsif type == 'set'
      @db_conn.execute("delete from sets where key = '#{key}'")
    end
  end
end
