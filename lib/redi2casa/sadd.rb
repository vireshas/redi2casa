class Redi2casa
  def sadd key, *members
    execute "update sets set members = members + {'#{members.join("','")}'} where key = '#{key}'"
  end
end
