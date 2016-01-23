# Recursive and iterative methods for returning the nth
# integer in a fibonacci sequence. The two methods demonstrate
# the performance differences between recursion and iteration.
class Fibonacci
  
  # Recursive solution using inline conditional
  def recursive_fib(nth)
    (nth < 2) ? nth : (recursive_fib(nth-1) + recursive_fib(nth-2))
  end

  # Iterative solution
  def iterative_fib(nth)
    # Store first two integers of fibonacci sequence in an array
    fib_seq = [0, 1]
    # 
    (nth-1).times  do
      # Set result to the value returned by the last and second to
      # last numbers in fib_seq
      result = fib_seq[-1] + fib_seq[-2]
      # Push the result onto the end of fib_seq
      fib_seq << result
    end
    # Return the last number in the sequence
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
