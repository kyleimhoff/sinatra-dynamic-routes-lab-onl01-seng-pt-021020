require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do 
  @reversename = params[:name].reverse
  "#{@reversename}"
end
get '/square/:number' do 
  @sqare = params[:number].to_i ** 2 
  "#{@square}"
end
get 'say/:number/:phrase' do 
  @number = params[:number].to_i
  @phrase = params[:phrase]
  @number.times {"#{phrase}"}
end 
get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end 
get '/:operation/:number1/:number2' do 
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i 
  answer = "Unable to perform that operation"
  
  case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
end 
end