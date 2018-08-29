require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/artist'
require 'pry'

get '/' do
  @artists = Artist.all()
  erb(:artists)
end
