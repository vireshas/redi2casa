class Redi2casa
  def llen namespace
    lrange(namespace, 0, -1).size
  end
end