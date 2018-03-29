require 'sinatra/base'
require_relative 'lib/storage'

class App < Sinatra::Base

  get '/set' do
    Storage.create(params)
    params.to_s
  end

  get '/get' do
    Storage.find(params[:key])
  end

end
