class Redi2casa
  def hincrby key, column1, value = 1
    execute("update counters set value = value + ? where key=? and column1 = ?", value, key, column1)
  end
end
