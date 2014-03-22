# Problem Seven

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?


class ProblemSeven

  def self.solution(prime_max, prime_index)
    question = ProblemSeven.new
    question.index_of_prime(prime_max, prime_index)
  end

  def primes_up_to_num(prime_max, prime = [])
    (2..prime_max).each{|int| prime.any?{|l| int % l == 0} ? nil : prime.push(int)}
    prime
  end

  def index_of_prime(prime_max, prime_index, index_arr = [])
    (primes_up_to_num(prime_max)).each_with_index {|int, index| index_arr << int if (index + 1) == prime_index }
    index_arr
  end

end

puts ProblemSeven.solution(200000, 10001) # => 104743