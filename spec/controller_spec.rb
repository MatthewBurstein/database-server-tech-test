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
end