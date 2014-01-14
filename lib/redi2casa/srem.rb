class Redi2casa
  def srem key, member
    execute("update sets set members = members - {'#{member}'} where key = ?", key.to_s)
  end
end
