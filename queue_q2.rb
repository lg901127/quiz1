class Queue
  def initialize(queue)
    @queue = queue
  end

  def add(element)
    @queue << element
    return @queue
  end

  def remove
    @queue.delete_at(0)
    return @queue
  end
end

b = Queue.new([1,2,3,4,5])

p b.add(10)
p b.remove
