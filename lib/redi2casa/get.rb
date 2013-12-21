class Redi2casa
  def get key, type = 'keyvalue'
    if type == 'keyvalue'
      resp = execute "select * from keyvalue where key = '#{key}'"
      parse_response(resp, "value")
    elsif type == 'counter'
      # @ is a special column in counter used by incrby
      resp = execute "select value from counters where KEY='#{key}' and column1 = '@'"
      parse_response(resp, "value").to_i
    end
  end
end
