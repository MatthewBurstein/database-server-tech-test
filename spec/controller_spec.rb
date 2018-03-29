require_relative '../app.rb'

describe App do
  include Rack::Test::Methods

  subject(:app) { described_class }

  describe '/set' do
    it 'the route exists' do
      allow(Storage).to receive(:create)
      get '/set'

      expect(last_response).to be_ok
    end

    it 'calls Storage.create(params)' do
      expect(Storage).to receive(:create).with({ "somekey" => 'somevalue' })

      get '/set?somekey=somevalue'
    end
  end

  describe '/get' do
    before do
      get '/set?somekey=somevalue'
    end

    it 'the route exists' do
      get '/get'

      expect(last_response).to be_ok
    end

    it 'returns the value stored for the requested key' do
      get '/get?key=somekey'

      expect(last_response.body).to eq 'somevalue'
    end
  end
end
