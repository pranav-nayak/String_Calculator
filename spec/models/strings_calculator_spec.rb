require 'rails_helper'

RSpec.describe StringsCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringsCalculator.new.add("")).to eq(0)
    end

    context "Single number" do
      it 'returns number 1 for "1"' do
        expect(StringsCalculator.new.add("1")).to eq(1)
      end

      it 'returns number 38 for "38"' do
        expect(StringsCalculator.new.add("38")).to eq(38)
      end
    end

    context "Two numbers" do
      it 'returns number 6 for "1,5"' do
        expect(StringsCalculator.new.add("1,5")).to eq(6)
      end

      it 'returns number 25 for "5,20"' do
        expect(StringsCalculator.new.add("5,20")).to eq(25)
      end
    end
  end
end
