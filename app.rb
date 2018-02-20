require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'
#require 'net/http'
#require 'open-uri'
require 'uri'
require 'net/http'
#require 'pry'

get '/' do
  'hello world'
end

get "/:name" do
  #data = Net::HTTP.get_print(URI.parse("https://github.com/users/#{params[:name]}/contributions"))

#  data = open("https://github.com/users/#{params[:name]}/contributions")
  uri = URI.parse("https://github.com/users/#{params[:name]}/contributions")
  garden_svg = Net::HTTP.get_response(uri).body
  puts "aaa"
  puts garden_svg #=> String
  puts garden_svg.class #=> String
  puts "bbb"

#  binding.pry
  return garden_svg
end
