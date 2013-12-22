class Redi2casa
  # Ranges are exclusive
  def zrangebyscore key, lower_limit, higher_limit = -1
    if higher_limit == -1
      resp = execute "select value from sorted_sets where key = '#{key}' and score > #{lower_limit}"
    else
      resp = execute "select value from sorted_sets where key = '#{key}' and score > #{lower_limit} and score < #{higher_limit}"
    end
    resp.collect do |entry|
      entry['value']
    end
  end
end
