# Problem Sixteen

# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

class ProblemSixteen

  def self.solution(num, exponent)
    question = ProblemSixteen.new
    question.sum_of_digits(num, exponent)
  end

  def product(num, exponent)
    (num**exponent).to_s
  end

  def sum_of_digits(num, exponent)
    product(num, exponent).split('').map{|num| num.to_i}.reduce(:+)
  end

end

p ProblemSixteen.solution(2, 1000) # => 




