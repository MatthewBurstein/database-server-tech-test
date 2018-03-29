require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    p "Hello World"
  end

end
