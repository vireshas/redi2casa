class Redi2casa
  def sadd_with_expire( key, ttl, *members)
    members.flatten!
    members.collect! { |member|  member.to_s }
    execute("update sets using ttl ? set members = members + ? where key = ?", ttl, members, key.to_s)
  end
end
