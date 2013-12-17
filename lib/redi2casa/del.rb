class Redi2casa
  ## Type can be sets, hashes, lists, keyvalue
  def del key, type
    if type == "counter"
      raise RuntimeError.new("deleting counters is not supported")
    elsif type == 'keyvalue'
      @db_conn.execute("delete from keyvalue where key = '#{key}'")
    elsif type == 'hash'
      @db_conn.execute("delete from hashes where key = '#{key}'")
    elsif type == 'list'
      @db_conn.execute("delete from lists where key = '#{key}'")
    elsif type == 'set'
      @db_conn.execute("delete from sets where key = '#{key}'")
    elsif type == 'sorted_set'
      @db_conn.execute("delete from sorted_sets where key = '#{key}'")
    end
  end
end
