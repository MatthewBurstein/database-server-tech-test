require_relative '../app'

describe App do
  subject(:app) { described_class }

  let(:test_params) { { test_key: 'test_value' } }

  describe '.data' do
    it 'returns App.data' do
      expect(app.data).to eq({})
    end
  end

  describe '.data=' do
    it 'sets App.data' do
      app.data=(test_params)
      expect(app.data).to eq test_params
    end
  end

end
