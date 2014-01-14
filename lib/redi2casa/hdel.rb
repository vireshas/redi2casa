class Redi2casa
  def hdel key, column1, type = "counter"
    if type == "counter"
      raise RuntimeError.new("deleting counters is not supported")
    elsif type == "hash"
      execute("delete from hashes where key = ? and column1 = ?", key.to_s, column1.to_s)
    end
  end
end
