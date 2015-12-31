class Fibonacci
  
  def recursive_fib(nth)
    (nth < 2) ? nth : (recursive_fib(nth-1) + recursive_fib(nth-2))
  end

  def iterative_fib(nth)
    fib_seq = [0, 1]
    (nth-1).times  do
      result = fib_seq[-1] + fib_seq[-2]
      fib_seq << result
    end
    fib_seq.last
  end

end


n = Fibonacci.new
puts n.recursive_fib(35)
puts n.iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { n.recursive_fib(num) }
  x.report("iterative_fib") { n.iterative_fib(num) }
end
