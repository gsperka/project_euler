require_relative './problem_one'
require 'rspec'

describe ProblemOne do

  describe '#multiple_sum' do
    it 'returns sum of multiples of 3 and 5 from 1 to the desired value' do
      expect(ProblemOne.multiple_sum(50)).to eq(543)
    end
  end
end

describe Integer do

	describe '#multiple_of_three?' do
		it 'returns true if the value called is a multiple of 3' do
			number = 10
			expect(number.multiple_of_three?).to eql(false)
		end
	end

	describe '#multiple_of_five?' do
		it 'returns true if the value called is a multiple of 5' do
			number = 7
			expect(number.multiple_of_five?).to eql(false)
		end
	end

end
