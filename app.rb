require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do 
  @reversename = params[:name].reverse
  "#{@reversename}"
end
get '/square/:number' do 
  @sqare = params[:number]** 2 
  "#{@square}"
end
get 'say/:number/:phrase' do 
  @number = params[:number]
  @phrase = params[:phrase]
  @number.times do
end 
end