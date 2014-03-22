# Problem Two

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class ProblemTwo

  def initialize(max_value)
    @max_value = max_value
    @fib_num = [0,1]  # The first two numbers of the Fibonacci sequence are themselves (0 and 1)
  end

  def self.solution(max_value)
    question = ProblemTwo.new(max_value)
    question.sum_of_even_fib
  end

  def next_fib_number(fib)
    fib[-1] + fib[-2]
  end

  def sum_of_even_fib
    max_fib_number(@fib_num, @max_value)
    @fib_num.select {|fib_num| fib_num.even?}.reduce(:+)
  end

  private

  def max_fib_number(fib, max_value)
    until next_fib_number(fib) >= max_value
      fib << next_fib_number(fib)
    end
  end
end

puts ProblemTwo.solution(4000000) # => 4613732

