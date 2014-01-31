class Redi2casa
  def mget keys, type = "keyvalue"
    values = keys.collect do |key|
      get(key, type)
    end
  end
end