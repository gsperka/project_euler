require_relative './problem_twentyfive'
require "rspec"

describe ProblemTwentyFive do 

  let(:example) {ProblemTwentyFive.new}

  describe '#fib_up_to_digit_max' do
    it 'returns the Fibonacci number once the loop requirements are met' do
      expect(example.fib_up_to_digit_max).to eql(476)
    end
  end
end