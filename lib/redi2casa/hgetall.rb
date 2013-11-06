class Redi2casa
  def hgetall key
    response = db.execute("select * from counters where KEY='#{key}'")
    response.fetch {|i| puts i.to_hash.inspect}
  end
end
