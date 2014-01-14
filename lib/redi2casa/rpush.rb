class Redi2casa
  def rpush namespace, data
    execute("UPDATE lists SET values = values + [?] WHERE namespace = ?", data, namespace.to_s)
  end
end
