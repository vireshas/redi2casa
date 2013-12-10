class Redi2casa
  # FIXME:This could potentially lead to read write problem.
  def set_bit key, offset, bit
    if !(bit != 0 || bit != 1)
      raise RuntimeError.new("Invalid bit")
    end
    hset("#{key}","#{offset}", bit)
  end
  alias :setbit :set_bit
end
