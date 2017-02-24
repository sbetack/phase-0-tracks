def list_music
  genre1 = "pop"
  genre2 = "classical"
  puts "there are many types of music"
  yield(genre1, genre2)
end

list_music { |genre1, genre2| puts "You can choose from #{genre1} and #{genre2}" }


#.each with an array
music_genres = ["pop", "classical", "jazz", "country", "rock"]
music_genres_capitalized = []
music_genres.each do |genre|
  music_genres_capitalized << genre.capitalize
end
p music_genres
p music_genres_capitalized

#.map with an array
cities = ["austin", "chicago", "nashville", "dallas", "houston"]
cities.map! do |city| 
  city.capitalize
end
p cities

#.each with a Hash
cities_and_states = {
  "austin" => "texas",
  "chicago" => "illinois",
  "nashville" => "tennessee",
  "dallas" => "texas",
  "houston" => "texas"
}
cities_and_states.each do |city, state|
  city.capitalize!
  state.capitalize!
  puts "#{city} is in #{state}"
end

