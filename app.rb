require 'sinatra'
require 'rubygems'

get '/' do
  @cake_list = File.open("cake.list", "r")
  @counter = 1
  erb :index
  #@cake_list.close
end

get '/test' do
  "Testing testing!"
end

