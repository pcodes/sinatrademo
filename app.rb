require 'sinatra'

get '/' do
  "<p>Test</p><br><a href='test'>Hello</a>"
end

get '/test' do
  "Testing testing!"
end
