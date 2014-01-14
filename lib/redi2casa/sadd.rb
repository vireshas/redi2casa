class Redi2casa
  def sadd key, *members
    execute("update sets set members = members + ? where key = ?", members, key.to_s)
  end
end
