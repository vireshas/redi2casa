class Redi2casa
  def zscore key, value
    resp = execute("select * from sorted_sets where key = ?", key)
    resp.each do |entry|
      return entry['score'] if entry['value'] == value.to_s
    end
    nil
  end
end
