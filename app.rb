require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do 
  @reversename = params[:name].reverse
  "#{@reversename}"
end
get '/square/:number' do 
  @sqare = params[:number]
end