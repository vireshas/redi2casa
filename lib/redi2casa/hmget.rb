class Redi2casa
  def hmget key, type, *column1s
    if type == "counter"
      table = "counters"
    elsif type == "hash"
      table = "hashes"
    else
      raise RuntimeError.new("invalid table")
    end

    resp = execute "select column1, value from #{table} where key = '#{key}' and column1 IN ('#{column1s.join("','")}')"
    hash = {}
    resp.each do |r|
      hash[r["column1"]] = r["value"]
    end
    result = []
    column1s.each do |column1|
      result << hash[column1.to_s]
    end
    result
  end
end
