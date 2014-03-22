require_relative './problem_seven'
require 'rspec'

describe ProblemSeven do 

 let(:example) {ProblemSeven.new}

  describe '#primes_up_to_num' do
    it 'returns all the prime numbers up to the argument' do
      expect(example.primes_up_to_num(10)).to eql([2,3,5,7])
    end
  end

  describe '#index_of_prime' do
    it 'returns the prime number at a given index' do
      expect(example.index_of_prime(13,5)).to eql([11])
    end
  end
  
end