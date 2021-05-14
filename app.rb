require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].to_s.reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase].to_s * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1].to_s + " " + params[:word2].to_s + " " + params[:word3].to_s + " " + params[:word4].to_s + " " + params[:word5].to_s + "."}"
  end
  
  get '/:operation/:number1/:number2' do
    if params[:operation].to_s == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation].to_s == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation].to_s == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end