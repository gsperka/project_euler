# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


class ProblemTen

  def initialize(num)
    @num = num
  end

  def self.solution(num)
    question = ProblemTen.new(num)
    question.prime_sum(num)
  end

  def primes_up_to_num(num, prime = [])
    (2..num).each{|int| prime.any?{|l| int % l == 0} ? nil : prime.push(int)}
    prime
  end

  def prime_sum(num)
    primes_up_to_num(num).reduce(:+)
  end

end

puts ProblemTen.solution(2000000) # => 142913828922