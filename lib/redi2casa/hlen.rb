class Redi2casa
  # Supports only hashes now
  def hlen key, type = "hash"
    if type == "hash"
      response = execute("select count(*) from hashes where key = ?", key.to_s)
    elsif type == "counter"
      response = execute("select count(*) from counters where key = ?", key.to_s)
    else
      raise RuntimeError.new("Invalid type")
    end
    parse_response(response, "count").to_i
  end
end
