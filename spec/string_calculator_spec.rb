require 'rspec'
require_relative '../lib/string_calculator'

describe StringCalculator do
  describe 'Testing String Calculator Inputs' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")) .to eq(0)
    end
  end
end