require_relative './problem_eight'
require 'rspec'

describe ProblemEight do 

  let(:example) {ProblemEight.new("12345")}

  describe '#consecutive_numbers' do
    it 'results in a nested array containing a number and the four numbers that follow it' do
      expect(example.consecutive_numbers).to eql([[1, 2, 3, 4, 5], [2, 3, 4, 5], [3, 4, 5]])
    end
  end

  describe '#product_of_array' do
    it 'returns the product of each nested array' do
      expect(example.product_of_array).to eql([120, 120, 60])
    end
  end

  describe '#sorted_product' do
    it 'results in a sorted array of product values and returns the highest value' do
      expect(example.sorted_product).to eql(120)
    end
  end

end