class Redi2casa
  def hdel key, column1, type = "counter"
    if type == "counter"
      @db_conn.execute("delete from counters where key = '#{key}' and column1 = '#{column1}'")
    elsif type == "hash"
      @db_conn.execute("delete from hashes where key = '#{key}' and column1 = '#{column1}'")
    end
  end
end
