class Redi2casa
  def spop key
    members = smembers(key)
    if members
      srem key, members.first
      members.first
    end
  end
end
