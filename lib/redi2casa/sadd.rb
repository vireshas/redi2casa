class Redi2casa
  def sadd key, *members
    members.collecit! { |member|  member.to_s }
    execute("update sets set members = members + ? where key = ?", members, key.to_s)
  end
end
