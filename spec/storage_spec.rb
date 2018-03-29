require 'storage'

describe Storage do
  subject(:storage) { described_class }

  let(:test_params) { { test_key: 'test_value' } }

  describe '.data' do
    it 'returns App.data' do
      expect(storage.data).to eq({})
    end
  end

  describe '.data=' do
    it 'sets App.data' do
      storage.data=(test_params)
      expect(storage.data).to eq test_params
    end
  end

end
