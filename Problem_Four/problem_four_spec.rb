require_relative './problem_four'
require 'rspec'

describe ProblemFour do 

  let(:example) {ProblemFour.new(2)}

  describe '#evenly_divisible?' do 
    it 'returns true if the number is evenly divisible' do
      num = 5000
      expect(example.evenly_divisible?(num)).to eql(true)
    end
  end

  describe '#answer' do 
    it 'returns largest pallindrome that is evenly divisible' do
      expect(example.answer).to eql(9009)
    end
  end

  describe '#pallindrome?' do
    it 'returns true if num is a pallindrome' do
      num = 4344
      expect(example.pallindrome?(num)).to eql(false)
    end
  end

end