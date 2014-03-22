require_relative './problem_six'
require 'rspec'

describe ProblemSix do
  
  let (:question) {ProblemSix.new}

  describe '#sum_of_squares' do
    it 'returns the sum of each number squared' do
      expect(question.sum_of_squares(10)).to eql(385)
    end
  end

  describe '#square_of_sum' do
    it 'returns the result of the sum squared' do
      expect(question.square_of_sum(10)).to eql(3025)
    end
  end

  describe '#difference' do
    it 'returns the difference between the square of sum and sum of squares' do
      expect(question.difference(10)).to eql(2640)
    end
  end

end