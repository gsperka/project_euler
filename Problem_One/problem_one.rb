# Problem 1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class ProblemOne

  def self.multiple_sum(value)
    sum = 0
    (1...value).each {|number| sum += number if number.multiple_of_three? || number.multiple_of_five?}
    sum
  end

end

class Integer 

  def multiple_of_three?
    self % 3 == 0
  end

  def multiple_of_five?
    self % 5 == 0
  end

end

ProblemOne.multiple_sum(1000) # => 233168
