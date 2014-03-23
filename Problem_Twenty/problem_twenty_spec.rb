require_relative ('./problem_twenty')
require 'rspec'

describe ProblemTwenty do 

  let(:example) {ProblemTwenty.new}

  describe '#product_of_range' do
    it 'returns the product of the factorial as a string' do
      expect(example.product_of_range(5)).to eql("120")
    end
  end

  describe '#sum_of_product' do
    it 'returns the sum of each number from the original product' do
      expect(example.sum_of_product(5)).to eql(3)
    end
  end

end