class Redi2casa
  def hgetall key
    response = @db_conn.execute("select * from counters where KEY='#{key}'")
    response.fetch {|resp| return resp.to_hash.reject {|entry| entry == "KEY"}}
  end
end
