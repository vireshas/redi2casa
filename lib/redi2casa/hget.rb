class Redi2casa
  def hget namespace, key, type = "counters"
    if type.to_s == "sets"
      resp = @db_conn.execute("select * from sets where namespace = ?", namespace).fetch
      resp.nil? ? nil : resp.to_hash['key'][key]
    elsif type.to_s == "counters"
      response = @db_conn.execute("select * from counters where KEY='#{namespace}' and column1 = '#{key}'")
      response.fetch {|entry| return entry.to_hash["value"]}
    end
  end
end
