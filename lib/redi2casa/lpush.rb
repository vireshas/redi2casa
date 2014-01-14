class Redi2casa
  def lpush namespace, data
    execute("UPDATE lists SET values = ? + values WHERE namespace = ?", [ data], namespace.to_s)
  end
end
