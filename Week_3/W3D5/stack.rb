class Stack
  def initialize
    @arr = []
  end

  def push(el)
    @arr << el
    el.dup
  end

  def pop
    @arr.pop
  end

  def peek
    return @arr.last
  end

  private
end