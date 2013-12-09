class Redi2casa
  def incrby key, value = 1
    hincrby key, '@', value
  end
end

