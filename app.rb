require 'sinatra/base'

class App < Sinatra::Base

  @data = {}

  def self.data
    @data
  end

  def self.data=(params)
    @data = params
  end

  get '/set' do
    self.class.data = params
  end

  get '/get' do
    self.class.data[params[:key]]
  end

end
