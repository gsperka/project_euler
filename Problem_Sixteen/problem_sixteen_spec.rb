require_relative './problem_sixteen'
require 'rspec'

describe ProblemSixteen do

  let(:example) {ProblemSixteen.new}

  describe '#product' do
    it 'returns the product of the num and its exponent in string form' do
      expect(example.product(2,15)).to eql("32768")
    end
  end

  describe '#sum_of_digits' do
    it 'returns the sum of each number in the product' do
      expect(example.sum_of_digits(2,15)).to eql(26)
    end
  end

end