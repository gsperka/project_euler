require_relative './problem_two'
require 'rspec'


describe ProblemTwo do

  let(:example) {ProblemTwo.new(500)}

  describe '#next_fib_number' do
    it 'returns the next number in the Fibonacci sequence' do
      fib = [1,2,3,5]
      expect(example.next_fib_number(fib)).to eql(8)
    end
  end

  describe '#sum_of_even_fib' do
    it 'returns the sum of all even Fibonacci numbers' do
      expect(example.sum_of_even_fib).to eql(188)
    end
  end

  describe '#self.solution' do
    it 'returns the sum of all even Fibonacci numbers before the max value' do
      expect(ProblemTwo.solution(100)).to eql(44)
    end
  end

end