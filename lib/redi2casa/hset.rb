class Redi2casa
  def hset key, column1, value
    execute "UPDATE hashes SET value = '#{value}' WHERE column1 = '#{column1}' and key = '#{key}'"
  end
end
