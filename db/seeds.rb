require "json"
require "open-uri"

puts 'Seeding data'

url = 'https://tmdb.lewagon.com/movie/top_rated'

base_url = 'https://image.tmdb.org/t/p/original'

serialised = URI.parse(url).read

movies = JSON.parse(serialised)

movies['results'].each do |movie|
  Movie.create(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "#{base_url}#{movie['poster_path']}",
    rating: movie['vote_average']
  )
end

List.create(name: 'Drama')

List.create(name: 'Comedy')

List.create(name: 'Classic')

List.create(name: 'To rewatch')

puts 'Seeding completed'
