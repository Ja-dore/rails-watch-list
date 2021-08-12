# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
require 'pry'

url = 'http://tmdb.lewagon.com/movie/top_rated'

info = JSON.parse(URI.open(url).read)
movie_array = info['results']
[0, 1, 2, 3, 4].each do |i|
  movie = movie_array[i]

  Movie.create(title: movie['title'], overview: movie['overview'], poster_url: "https://image.tmdb.org/t/p/original#{movie['poster_path']}", rating: movie['vote_average'])
end
