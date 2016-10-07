require 'sinatra'

get '/' do
  "home"
  @names = ["joey", "mike", "anthony"]
  erb :home
end

get'/photos' do
  "here are some pictures"
end

get '/history' do
  "Hello World"
end

get '/contact' do
  "contact us"
end