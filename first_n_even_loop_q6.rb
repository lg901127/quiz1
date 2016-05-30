require 'benchmark'

def first_n_even_loop(num)
  num if num == 0
  numbers = []
  (1..num).each do |x|
    x % 2 == 0 ? numbers << x : numbers
  end
  numbers
end

p first_n_even_loop(20)


def first_n_even_rec(num, init = [])
  if num == 0
    init.reverse
  elsif num % 2 == 0
    init << num
    num -= 1
    first_n_even_rec(num, init)
  else
    num -= 1
    first_n_even_rec(num, init)
  end
end

p first_n_even_rec(31)
puts Benchmark.measure { 100000.times {first_n_even_loop(20)} }
puts Benchmark.measure { 100000.times {first_n_even_rec(20)} }
