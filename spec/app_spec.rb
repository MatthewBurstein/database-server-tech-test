require_relative '../app'

describe App do
  subject(:app) { described_class }

  let(:test_params) { { test_key: 'test_value' } }

  describe '.data' do
    it 'returns App.data' do
      expect(app.data).to eq({})
    end
  end

end
