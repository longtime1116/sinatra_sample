require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'
#require 'net/http'
require 'open-uri'
#require 'pry'

get '/' do
  'hello world'
end

get "/:name" do
  #data = Net::HTTP.get_print(URI.parse("https://github.com/users/#{params[:name]}/contributions"))

  data = open("https://github.com/users/#{params[:name]}/contributions")
#  p "hoge"
#  p data

#  binding.pry
  return data
end
