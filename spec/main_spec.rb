require_relative '../main.rb'
require 'rspec'

RSpec.describe Main do
  subject do
    described_class.new(prices).compute
  end

  context 'is ok: [7,1,5,3,6,4] = 5' do
    let(:prices) { [7,1,5,3,6,4] }

    it 'is ok' do
      expect(subject).to eq 5
    end
  end

  context 'is ok: [7,6,4,3,1] = 0' do
    let(:prices) { [7,6,4,3,1] }

    it 'is ok' do
      expect(subject).to eq 0
    end
  end

  context 'is ok: [7,9,15,1,6,5] = 8' do
    let(:prices) { [7,9,15,1,6,5] }

    it 'is ok' do
      expect(subject).to eq 8
    end
  end

  context 'errors: prices.length >= 1' do
    let(:prices) { [] }

    it 'is not ok' do
      expect(subject).to eq "Error"
    end
  end

  context 'errors: prices.length <= 105' do
    let(:prices) { [*1..106] }

    it 'is not ok' do
      expect(subject).to eq "Error"
    end
  end

  context 'errors: prices[i] >= 0' do
    let(:prices) { [-1] }

    it 'is not ok' do
      expect(subject).to eq "Error"
    end
  end

  context 'errors: prices[i] <= 200' do
    let(:prices) { [201] }

    it 'is not ok' do
      expect(subject).to eq "Error"
    end
  end
end
