class Redi2casa
  #has a read modify write problem
  def lpop namespace
    resp = execute("select values from lists where namespace = ?", namespace.to_s)
    values = []
    resp.each {|entry| values = entry.to_hash["values"]}
    resp = values.shift
    lrepush(namespace, values)
    resp
  end
end
