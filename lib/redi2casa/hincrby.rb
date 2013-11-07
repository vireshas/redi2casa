class Redi2casa
  def hincrby namespace, key, value
    query = "update counters set value = value + #{value} where key='#{namespace}' and column1 = '#{key}'"
    @db_conn.execute(query)
  end
end
