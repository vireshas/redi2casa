class Redi2casa
  def zrangebyscore key, lower_limit, higher_limit = -1
    if higher_limit == -1
      resp = @db_conn.execute("select value from sorted_sets where key = '#{key}' and score > #{lower_limit}")
    else
      resp = @db_conn.execute("select value from sorted_sets where key = '#{key}' and score > #{lower_limit} and score < #{higher_limit}")
    end
    resp.collect do |entry|
      entry['value']
    end
  end
end