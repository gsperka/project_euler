# Problem TwentyFive

# The Fibonacci sequence is defined by the recurrence relation:

# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.

# What is the first term in the Fibonacci sequence to contain 1000 digits?


class ProblemTwentyFive

  def self.solution
    question = ProblemTwentyFive.new
    question.fib_up_to_digit_max
  end

  def fib_up_to_digit_max
    final_fib = 1
    fib_one, fib_two = 0, 1
      
      while fib_two.to_s.length < 1000
        fib_one, fib_two = fib_two, fib_one + fib_two
        final_fib += 1
      end
      final_fib
  end
end

p ProblemTwentyFive.solution # => 4782




