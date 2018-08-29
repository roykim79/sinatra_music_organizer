require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/artist'
require 'pry'

get '/' do
  Artist.clear()
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

get '/artists/:id' do
  @artist = Artist.find(params[:id].to_i)
  erb(:artist_detail)
end
