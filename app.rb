require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/reversename/:name' do
    @name = param[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = param[:number]
    @number.to_i^2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    param[:number] param[:phrase]
  end
end
