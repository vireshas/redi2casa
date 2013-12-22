class Redi2casa
  def zrem key, member
    resp = execute "select * from sorted_sets where key = '#{key}'"
    resp.each do |entry|
      execute "delete from sorted_sets where key = '#{key}' and score = #{entry['score']} and value = '#{entry['value']}'" if entry['value'] == member.to_s
    end
  end
end
