# Problem FortyEight

# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

class ProblemFortyEight

  def self.solution(max)
    question = ProblemFortyEight.new
    question.last_ten_digits(max)
  end


  def sum_up_to_max(max, series_arr = [])
    n = 1
    (n..max).each do |num|
      series_arr << num**n
      n+=1
    end
    series_arr.reduce(:+).to_s
  end

  def last_ten_digits(max)
    sum_up_to_max(max).split('').last(10).join()
  end


end

p ProblemFortyEight.solution(1000) # => 9110846700