require 'sinatra/base'

class App < Sinatra::Base

  @data = {}

  def self.data
    @data
  end

  def self.data=(params)
    @data = params
  end

  get '/' do
    p "Hello World"
  end

  get '/set' do
    self.class.data = params
  end

end
