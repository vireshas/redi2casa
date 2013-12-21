class Redi2casa
  def hget key, column1, type = "counter"
    if type.to_s == "hash"
      resp = execute "select value from hashes where key = '#{key}' and column1 = '#{column1}'"
      parse_response(resp, "value")
    elsif type.to_s == "counter"
      resp = execute "select value from counters where KEY='#{key}' and column1 = '#{column1}'"
      parse_response(resp, "value").to_i
    end
  end
end
