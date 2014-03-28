# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

class ProblemFour

  def initialize(digits)
    @digits = digits
    @max = (10 ** digits) ** 2
    @min = (10 ** (digits - 1)) ** 2
  end

  def self.solution(digits)
    prob = ProblemFour.new(digits)
    prob.answer
  end

  def answer
    @max.downto(@min) do |num|
      if pallindrome?(num)
        return num if evenly_divisible?(num)
      end
    end
  end

  def pallindrome?(num)
    num.to_s.reverse == num.to_s
  end

  def evenly_divisible?(num)
    (10 ** @digits).downto(10 ** (@digits - 1)).each do |div|
      return true if num % div == 0 && (num / div).to_s.length == @digits
    end
    false
  end
end

p ProblemFour.solution(3)