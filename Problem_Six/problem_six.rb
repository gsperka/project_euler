# Problem Six

# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


class ProblemSix

  def self.solution(num)
    question = ProblemSix.new
    question.difference(num)
  end

  def sum_of_squares(num)
    (1..num).map {|int| int**2}.reduce(:+)
  end

  def square_of_sum(num)
    ((1..num).reduce(:+))**2
  end

  def difference(num)
    square_of_sum(num) - sum_of_squares(num)
  end

end

puts ProblemSix.solution(100) # => 25164150