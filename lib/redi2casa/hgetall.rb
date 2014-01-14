class Redi2casa
  def hgetall key, type = "counter"
    if type.to_s == "counter"
      response = execute("select * from counters where KEY = ?", key.to_s)
      response.inject({}) {|hsh, entry| hsh[entry["column1"]] = entry["value"]; hsh}
    elsif type.to_s == "hash"
      response = execute("select * from hashes where KEY = ?", key.to_s)
      response.inject({}) {|hsh, entry| hsh[entry["column1"]] = entry["value"]; hsh}
    end
  end
end
