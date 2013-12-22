class Redi2casa
  def set key, value
    execute "UPDATE keyvalue set value = '#{value}' where key = '#{key}'"
  end
end
