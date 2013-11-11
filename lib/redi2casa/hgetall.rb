class Redi2casa
  def hgetall key, type = "counters"
    if type.to_s == "counters"
      response = @db_conn.execute("select * from counters where KEY='#{key}'")
      hsh = {}
      response.fetch {|resp| entry = resp.to_hash; hsh[entry["column1"]] = entry["value"] }
      hsh
    elsif type.to_s == "hash"
      resp = @db_conn.execute("select * from sets where namespace = ?", key).fetch
      resp.nil? ? nil : resp.to_hash['key']
    end
  end
end
