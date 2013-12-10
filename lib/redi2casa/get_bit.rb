class Redi2casa
  def get_bit key, offset
    hget("#{key}", "#{offset}", "hash").to_i
  end
  alias :getbit :get_bit
end
