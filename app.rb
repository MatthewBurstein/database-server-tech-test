require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    p "Hello world"
  end

end
