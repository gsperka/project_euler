require_relative './problem_five'
require 'rspec'

describe ProblemFive do 

  let (:example) {ProblemFive.new(15)}

  describe '#answer' do
    it 'returns the smallest multiple of all numbers up the the max multiple' do
      expect(example.answer).to eql(360360)
    end
  end
end