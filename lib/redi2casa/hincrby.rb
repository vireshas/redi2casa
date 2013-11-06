class Redi2casa
  def hincrby namespace, key, value
    query = "update counters set #{key} = #{key} + #{value} where KEY='#{namespace}'"
    @db_conn.execute(query)
  end
end
