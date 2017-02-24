#Release 0
def list_music
  genre1 = "pop"
  genre2 = "classical"
  puts "there are many types of music"
  yield(genre1, genre2)
end

p list_music { |genre1, genre2| puts "You can choose from #{genre1} and #{genre2}" }


#Release 1
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
cities_and_states_capitalized = {}

cities_and_states.each do |city, state|
  city_capitalized = city.capitalize
  state_capitalized = state.capitalize
  cities_and_states_capitalized[city_capitalized] = state_capitalized
  puts "#{city_capitalized} is in #{state_capitalized}"
end

p cities_and_states_capitalized


# Release 2:
test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p test_array.delete_if {|num| num < 5 }

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p test_array.keep_if {|num| num < 5 }

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p test_array.select { |num| num >= 7}

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p test_array.drop_while {|num| num < 3}



