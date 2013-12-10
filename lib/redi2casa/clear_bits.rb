class Redi2casa
  def clear_bits key
    del(key, "hash")
  end
  alias :clearbits :clear_bits
end
