require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base
#route
get '/' do
  erb :index
end

post '/results' do
  current_year = params[:birthyear]
  @future_age = 2030 - current_year.to_i
  erb :results
end

get '/browning' do
  erb :browning
end

get '/brearley' do
  return "Welcome to Brearley"
end

get '/dalton' do
  return "Welcome to Dalton"
end

end
