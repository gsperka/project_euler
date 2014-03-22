require_relative './problem_three'
require 'rspec'

describe ProblemThree do 

  let (:question) {ProblemThree.new(10)}

  describe '#is_prime?' do
    it 'returns true if the argument is prime' do
      expect(question.is_prime?(7)).to eql(true)
    end
  end

  describe '#all_prime_factors' do
    it 'returns all the prime factors for the argument' do
      expect(question.all_prime_factors([])).to eql([2,5])
    end
  end

  describe '#last_prime_factor' do
    it 'returns the highest prime factor of the argument' do
      expect(question.last_prime_factor).to eql(5)
    end
  end

end