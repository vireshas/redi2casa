class Redi2casa
  def hset key, column1, value
    execute("UPDATE hashes SET value = ? WHERE column1 = ? and key = ?", value, column1, key)
  end
end
