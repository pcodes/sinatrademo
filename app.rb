require 'sinatra'
require 'sinatra/json'

get '/' do
  @cake_list = File.open("cake.list", "r")
  @counter = 1
  erb :index
end

get '/json' do
  @json_array = File.readlines("cake.list")
  @json_array.map!{ |cake| cake.gsub(/\n/, '') }
  json @json_array
end

get '/test' do
  "Testing testing!"
end

