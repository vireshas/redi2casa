class Redi2casa
  def setex key, ttl, value
    execute("UPDATE keyvalue using TTL ? set value = ? where key = ?", ttl, value.to_s, key.to_s)
  end
end
