class Redi2casa
  def get_bit key, offset
    get("#{key}:#{offset}").to_i
  end
  alias :getbit :get_bit
end
