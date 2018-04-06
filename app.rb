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
    @number = param[:number]
    @phrase = param[:phrase]
    @repeat = @phrase * @number
    "#{@repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end
end
