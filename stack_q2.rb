class Stack
  def initialize(stack)
    @stack = stack
  end

  def remove
    @stack.pop
    return @stack
  end

  def add(element)
    @stack << element
    return @stack
  end
end

a = Stack.new([1,2,3,4,5])
p a.remove
p a.add(10)
