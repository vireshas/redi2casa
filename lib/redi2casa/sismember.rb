class Redi2casa
  def sismember key, value
    smembers(key).include?(value)
  end
end