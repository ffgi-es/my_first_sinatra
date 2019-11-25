require 'sinatra'

get '/' do
  name = params['name'] || "Stranger"
  "Hello! #{name}"
end

get '/secret' do
  "I believe bananas are out to get me!"
end

get '/test' do
  "This is a test"
end
