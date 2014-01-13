class Redi2casa
  def zrem key, member
    resp = execute("select * from sorted_sets where key = ?", key)
    resp.each do |entry|
      if entry['value'] == member.to_s
        execute("delete from sorted_sets where key = ? and score = ? and value = ?", key, entry['score'], entry['value'])
      end
    end
  end
end
