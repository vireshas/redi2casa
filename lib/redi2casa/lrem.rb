class Redi2casa
  def lrem namespace, count, value
    elements = lrange(namespace, 0, -1)
    if count == 0
      delete_positions = []
      elements.delete(value)
    elsif count < 0
      count = count * -1
      delete_positions = []
      (elements.length - 1).downto(0) do |i|
        if elements[i] == value && count > 0
          delete_positions << i
          count -= 1
        end
      end
    elsif count > 0
      delete_positions = []
      elements.each_index do |i|
        if elements[i] == value && count > 0
          delete_positions << i
          count -= 1
        end
      end
    end

    delete_positions.sort!
    delete_positions.reverse!

    puts delete_positions.inspect
    delete_positions.each do |pos|
      elements.delete_at(pos)
    end

    lrepush(namespace, elements)
  end
end
