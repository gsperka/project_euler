require_relative './problem_ten'
require 'rspec'

describe ProblemTen do 

  let(:example) {ProblemTen.new(10)}

  describe '#primes_up_to_num' do
    it 'returns all the prime numbers up to the argument' do
      expect(example.primes_up_to_num(10)).to eql([2,3,5,7])
    end
  end

  describe '#prime_sum' do
    it 'returns the sum of all prime numbers up to the argument' do
      expect(example.prime_sum(10)).to eql(17)
    end
  end

end