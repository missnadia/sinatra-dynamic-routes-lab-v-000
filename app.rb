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
    @word1 = param[:word1]
    @word2 = param[:word2]
    @word3 = param[:word3]
    @word4 = param[:word4]
    @word5 = param[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end

  get '/:operation/:number1/:number2' do
    @operation = param[:operation]
    @number1 = param[:number1]
    @number2 = param[:number2]
    if @operation == add
      @number1 + @number2
    elsif @operation == subtract
      @number1 - @number2
    elsif @operation == multiply
      @number1 * @number2
    elsif @operation == divide
      @numeber1 / @number2
    else
      nil
    end
  end
end
