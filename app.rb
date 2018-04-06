require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/reversename/:name' do
    @name = param[:name]
    @name.reverse
  end
end
