class Redi2casa
  def ltrim namespace, first, last
    resp = @db_conn.execute("select values from lists where namespace='#{namespace}'")
    values = {}
    resp.fetch {|entry| values = entry.to_hash["values"]}
    values_count = values.count
    #if first is greater than list length, redis returns empty list
    #if negative value of last is equal or greater than list length a similar behaviour is shown
    if (first > values_count) || (-last >= values_count)
      lflush(namespace)
    elsif last > values_count
      last = values_count
    else
      new_list = values[first..last]
      lrepush(namespace, new_list)
    end
  end

  def lflush namespace
    @db_conn.execute("UPDATE lists SET values = []  WHERE namespace = '#{namespace}'")
  end

  def lrepush namespace, list
    @db_conn.execute("UPDATE lists SET values = [?]  WHERE namespace = '#{namespace}'", list)
  end
end
