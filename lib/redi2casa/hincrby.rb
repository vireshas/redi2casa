class Redi2casa
  def hincrby key, column1, value = 1
    value = value.to_i
    execute("update counters set value = value + ? where key = ? and column1 = ?", value, key.to_s, column1.to_s)
  end
end
