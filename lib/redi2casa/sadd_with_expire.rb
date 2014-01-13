class Redi2casa
  def sadd_with_expire( key, ttl, *members)
    execute("update sets using ttl ? set members = members + ? where key = ?", ttl, members, key)
  end
end
