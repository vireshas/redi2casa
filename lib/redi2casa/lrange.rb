class Redi2casa
  def lrange namespace, first, last
    resp = execute("select values from lists where namespace = ?", namespace)
    resp.each {|entry| 
      values = entry.to_hash["values"] || []
      return values[first..last]
    }
  end
end
