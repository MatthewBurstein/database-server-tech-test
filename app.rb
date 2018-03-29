require 'sinatra/base'

class App < Sinatra::Base

  @data = {}

  def self.data
    @data
  end

  get '/' do
    p "Hello World"
  end

  get '/set' do

  end

end
