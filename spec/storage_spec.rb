require 'storage'

describe Storage do
  subject(:storage) { described_class }

  let(:test_params) { { test_key: 'test_value' } }

  describe '.data' do
    it 'returns App.data' do
      expect(storage.data).to eq({})
    end
  end

  describe '.create' do
    it 'stores the data in the Storage class' do
      expect(storage.create(test_params)).to eq test_params
    end
  end
end
