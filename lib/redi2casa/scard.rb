class Redi2casa
  def scard key
    smembers(key).size
  end
end