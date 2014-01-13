class Redi2casa
  def set key, value
    execute("UPDATE keyvalue set value = ? where key = ?", value, key)
  end
end
