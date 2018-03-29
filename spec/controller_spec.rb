require_relative '../app.rb'

describe App do
  include Rack::Test::Methods

  subject(:app)          { described_class }
  let(:params)           { { 'somekey' => 'somevalue' } }
  let(:query_parameters) { '?somekey=somevalue' }

  describe '/set' do
    it 'the route exists' do
      allow(Storage).to receive(:create)
      get '/set'

      expect(last_response).to be_ok
    end

    it 'calls Storage.create(params)' do
      expect(Storage).to receive(:create).with(params)

      get "/set#{query_parameters}"
    end

    it 'returns the stored data' do
      get "/set#{query_parameters}"

      expect(last_response.body).to eq(params.to_s)
    end
  end

  describe '/get' do
    before do
      get "/set#{query_parameters}"
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
