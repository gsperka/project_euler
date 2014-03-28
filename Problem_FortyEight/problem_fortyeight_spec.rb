require_relative './problem_fortyeight'
require 'rspec'

describe ProblemFortyEight do 

  let(:example) {ProblemFortyEight.new}

  describe '#sum_up_to_max' do
    it 'returns a string of the series sum up to the given value (max)' do
      expect(example.sum_up_to_max(10)).to eql("10405071317")
    end
  end

  describe '#last_ten_digits' do
    it 'returns the last 10 digits of the value' do
      expect(example.last_ten_digits(10)).to eql("0405071317")
    end
  end

end