require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/artist'
require 'pry'

get '/' do
  @artists = Artist.all()
  erb(:artists)
end

post '/' do
  artist = Artist.new({
    :name => params.fetch('name'),
    :genre => params.fetch('genre')
    })
  artist.save()
  @artists = Artist.all()
  erb(:artists)
end
