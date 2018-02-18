require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'

get '/' do
  'hello world'
end

get "/:name" do
  data = {name: params[:name]}
  json data
end
