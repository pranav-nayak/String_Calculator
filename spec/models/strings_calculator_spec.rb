require 'rails_helper'

RSpec.describe StringsCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringsCalculator.new.add("")).to eq(0)
    end
  end
end
