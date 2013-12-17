class Redi2casa
  def zrem key, member
    resp = @db_conn.execute("select * from sorted_sets where key = '#{key}'")
    resp.each do |entry|
      @db_conn.execute("delete from sorted_sets where key = '#{key}' and score = #{entry['score']} and value = '#{entry['value']}'") if entry['value'] == member.to_s
    end
  end
end
