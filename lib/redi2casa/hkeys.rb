class Redi2casa
  def hkeys key, type = "counter"
    if type.to_s == "counter"
      response = execute("select column1 from counters where key = ?", key.to_s)
    elsif type.to_s == "hash"
      response = execute("select column1 from hashes where key = ?", key.to_s)
    else
      raise RuntimeError.new("Invalid type")
    end
    response.collect {|entry| entry["column1"]}
  end
end
