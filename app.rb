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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:named_cat, layout: :index)
end

get '/named-form' do
  erb(:named_cat)
end
