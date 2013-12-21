class Redi2casa
  def lpush namespace, data
    execute "UPDATE lists SET values = ['#{data}'] + values WHERE namespace = '#{namespace}'"
  end
end
