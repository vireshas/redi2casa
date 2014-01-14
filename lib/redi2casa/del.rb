class Redi2casa
  ## Type can be sets, hashes, lists, keyvalue
  def del key, type
    if type == "counter"
      raise RuntimeError.new("deleting counters is not supported")
    elsif type == 'keyvalue'
      execute("delete from keyvalue where key = ?", key.to_s)
    elsif type == 'hash'
      execute("delete from hashes where key = ?", key.to_s)
    elsif type == 'list'
      execute("delete from lists where namespace = ?", key.to_s)
    elsif type == 'set'
      execute("delete from sets where key = ?", key.to_s)
    elsif type == 'sorted_set'
      execute("delete from sorted_sets where key = ?", key.to_s)
    else
      raise RuntimeError.new("Invalid type")
    end
  end
end
