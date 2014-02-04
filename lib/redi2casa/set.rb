class Redi2casa
  def set key, value
    execute("UPDATE keyvalue set value = ? where key = ?", value.to_s, key.to_s)
  end
end
