# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

class ProblemThree

  def initialize(num)
    @num = num
  end

  def self.solution(num)
    question = ProblemThree.new(num)
    question.last_prime_factor
  end

  def is_prime?(num)
    (2..(num - 1)).each {|i| return false if num % i == 0}
    true
  end

  def all_prime_factors(prime_num = [])
    product = 1
    integer = 2
    while product < @num
      if @num % integer == 0 && is_prime?(integer)
        prime_num << integer
        product *= integer
      end
      integer += 1
    end
    prime_num
  end

  def last_prime_factor
    prime = []
    all_prime_factors(prime).last
  end

end

puts ProblemThree.solution(600851475143) # => 6857
