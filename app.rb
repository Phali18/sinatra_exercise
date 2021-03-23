require 'sinatra'
require "sinatra/reloader" if development?
 
set :session_secret, 'super secret'

 get '/' do
  "Hello World"
end

get '/secret' do 
  "This is a secret page"
end

get '/about' do 
  output = '<h2>Sinatra</h2>'
  output << '<p>This is my first sinatra app. </p>'
  output
end 

get '/cat' do
  erb(:index)
end 
  