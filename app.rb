require 'sinatra'

dogs = []

get '/' do
  @dogs = dogs
  erb :index
end

get '/dogs/new' do
  erb :dogs
end

post '/dogs' do
  dogs << params[:name]
  redirect '/'
end
