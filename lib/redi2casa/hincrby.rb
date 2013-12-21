class Redi2casa
  def hincrby key, column1, value = 1
    execute "update counters set value = value + #{value} where key='#{key}' and column1 = '#{column1}'"
  end
end
