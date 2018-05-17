require 'sinatra'
require 'sinatra/json'

get '/' do
  @cake_list = File.open("cake.list", "r")
  @counter = 1
  erb :index
  #@cake_list.close
end

get '/json' do
  #@cake_list = File.open("cake.list", "r")
  @json_array = File.readlines("cake.list")
  @json_array.map!{ |cake| cake.gsub(/\n/, '') }
  @json_array.to_json
  #@test_array = [0, 1, 2]
  #@test_array.to_json
end

get '/test' do
  "Testing testing!"
end

