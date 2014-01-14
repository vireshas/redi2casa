class Redi2casa
  def smembers key
    resp = execute("select * from sets where key = ?", key.to_s)
    if resp.first
      resp.first["members"].to_a
    else
      []
    end
  end
end
