ENV['RACK_ENV'] = 'test'

require_relative '../app.rb'

describe App do
  include Rack::Test::Methods

  def app
    App
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq "Hello World"
  end

  describe '/set' do
    it 'receives requests at /set' do
      get'/set'
      expect(last_response).to be_ok
    end

    it 'stores the params in memory' do
      get '/set?somekey=somevalue'
      expect(app.data).to eq({ "somekey" => 'somevalue' })
    end
  end
end
