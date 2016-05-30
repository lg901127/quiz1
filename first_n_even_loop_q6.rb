require 'benchmark'

def first_n_even_loop(num)
  num if num == 0
  numbers = []
  (1..num).each do |x|
    numbers << x * 2
  end
  numbers
end

p first_n_even_loop(20)
p first_n_even_loop(0)
p first_n_even_loop(1)

def first_n_even_rec(num, init = [])
  if num == 0
    init.reverse
  else
    init << num * 2
    first_n_even_rec(num - 1, init)
  end
end

p first_n_even_rec(20)
p first_n_even_rec(0)
p first_n_even_rec(1)
puts Benchmark.measure { 100000.times {first_n_even_loop(20)} }
puts Benchmark.measure { 100000.times {first_n_even_rec(20)} }
