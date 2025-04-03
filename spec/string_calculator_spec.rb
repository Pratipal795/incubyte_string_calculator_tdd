require 'rspec'
require_relative '../lib/string_calculator'

describe StringCalculator do
  describe 'Testing String Calculator Inputs' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")) .to eq(0)
    end

    it 'returns the number itself if only one number is provided' do
      expect(StringCalculator.add("1")).to eq(1)
    end

     it 'returns sum of two numbers separated by comma' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end
  end
end