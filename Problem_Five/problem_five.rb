# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class ProblemFive

  def initialize(max_multiple)
    @max_multiple = max_multiple
    @final = max_multiple
  end

  def self.solution(max_multiple)
    question = ProblemFive.new(max_multiple)
    question.answer
  end

  def answer
    while true
      return @final if divisible_up_to_max == true
      @final += @max_multiple
    end
  end

  private

  def divisible_up_to_max
    divisible = true
    (@max_multiple - 1).downto(1) do |num|
      if @final % num != 0
        divisible = false
        return
      end
    end
    divisible
  end
end

puts ProblemFive.solution(20)