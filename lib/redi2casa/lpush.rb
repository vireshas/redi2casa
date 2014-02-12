class Redi2casa
  def lpush namespace, data
    execute("UPDATE lists SET values = ? + values WHERE namespace = ?", [ data.to_s], namespace.to_s)
  end
end
