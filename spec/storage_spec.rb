require 'storage'

describe Storage do
  subject(:storage)  { described_class }
  let(:initial_data) { { 'initial key' => 'initial value' } }
  let(:test_params)  { { 'test key' => 'test value' } }

  describe '.find' do
    before do
      storage.create(initial_data)
    end

    it 'returns value for the passed key' do
      expect(storage.find('initial key')).to eq 'initial value'
    end
  end

  describe '.create' do
    it 'stores the data in the Storage class' do
      expect(storage.create(test_params)).to eq test_params
    end
  end
end
