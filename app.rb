require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  resp = Rack::Response.new
  # req = Rack::Request.new(env)

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    number = params[:number]
    phrase = params[:phrase]
    str = ""
    number.to_i.times do
       str << phrase << "\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1 + " " + word2 + " " + word3 + " " + word4 + " " + word5}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
      when "add"
        "#{num1 + num2}"
      when "subtract"
        "#{num2 - num1}"
      when "multiply"
        "#{num1 * num2}"
      when "divide"
        "#{num1 / num2}"
      else "whatever"
    end
  end
end
