# Problem Twenty

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

class ProblemTwenty

  def self.solution(num)
    question = ProblemTwenty.new
    question.sum_of_product(num)
  end

  def product_of_range(num, product_arr = [])
    (num).downto(1) {|int| product_arr << int}
    product_arr.reduce(:*).to_s
  end

  def sum_of_product(num)
    product_of_range(num).split('').map{|num| num.to_i}.reduce(:+)
  end
end

p ProblemTwenty.solution(100) # => 648
