# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"
require "json"
require "json_csv"

CharacterFilm.delete_all
CharacterStarship.delete_all
Character.delete_all
Homeworld.delete_all
Race.delete_all
Film.delete_all
Starship.delete_all

puts "running seed"
# Character csv 1/7
character_file = Rails.root.join("db/characters.csv")
csv_character_data = File.read(character_file)
characters = CSV.parse(csv_character_data, headers: true, encoding: "utf-8")

# Race.csv 2/7
race_file = Rails.root.join("db/race.csv")
csv_race_data = File.read(race_file)
race = CSV.parse(csv_race_data, headers: true, encoding: "utf-8")

# homeworld.csv 3/7
homeworld_file = Rails.root.join("db/homeworld.csv")
csv_homeworld_data = File.read(homeworld_file)
homeworlds = CSV.parse(csv_homeworld_data, headers: true, encoding: "utf-8")

# films.csv 4/7
film_file = Rails.root.join("db/films.csv")
csv_film_data = File.read(film_file)
films = CSV.parse(csv_film_data, headers: true, encoding: "utf-8")

# starships.csv 5/7
starship_file = Rails.root.join("db/starships.csv")
csv_starship_data = File.read(starship_file)
starships = CSV.parse(csv_starship_data, headers: true, encoding: "utf-8")

# characterFilm.csv 6/7
character_Film_file = Rails.root.join("db/characterFilm.csv")
csv_character_Film_data = File.read(character_Film_file)
character_Films = CSV.parse(csv_character_Film_data, headers: true, encoding: "utf-8")

# characterStarship.csv 7/7
# character_starship_file = Rails.root.join("db/characterStarship.csv")
# csv_character_starship_data = File.read(character_starship_file)
# character_starships = CSV.parse(csv_character_starship_data, headers: true, encoding: "utf-8")
homeworlds.each do |p|
  homeworld = Homeworld.create(
    name:            p["name"],
    rotation_period: p["rotation_period"],
    orbital_period:  p["orbital_period"],
    diameter:        p["diameter"],
    climate:         p["climate"],
    gravity:         p["gravity"],
    terrain:         p["terrain"],
    surface_water:   p["surface_water"],
    population:      p["population"],
    imagepath:       p["image_path"]
  )
end
race.each do |s|
  Race.create(
    name:             s["name"],
    classification:   s["classification"],
    designation:      s["designation"],
    average_height:   s["average_height"],
    skin_colors:      s["skin_colors"],
    hair_colors:      s["hair_colors"],
    eye_colors:       s["eye_colors"],
    average_lifespan: s["average_lifespan"],
    language:         s["language"],
    homeworld:        s["homeworld"]
  )
end

films.each do |f|
  film = Film.create(
    name:          f["title"],
    opening_crawl: f["opening_crawl"],
    director:      f["director"],
    release_date:  f["release_date"],
    imagepath:     f["image_path"]
  )
end
starships.each do |st|
  starship = Starship.create(
    name:                   st["name"],
    model:                  st["model"],
    manufacturer:           st["manufacturer"],
    cost_in_credits:        st["cost_in_credits"],
    length:                 st["length"],
    max_atmospgering_speed: st["max_atmosphering_speed"],
    crew:                   st["crew"],
    passengers:             st["passengers"],
    cargo_capacity:         st["cargo_capacity"],
    consumables:            st["consumables"],
    hyperdrive_rating:      st["hyperdrive_rating"],
    mglt:                   st["mglt"],
    starship_class:         st["starship_class"],
    imagepath:              st["imagepath"]
  )
end

characters.each do |c|
  homeworld = Homeworld.find_or_create_by(name: c["homeworld"])

  character = homeworld.characters.find_or_create_by(
    name:       c["name"],
    height:     c["height"],
    mass:       c["mass"],
    hair_color: c["hair_color"],
    skin_color: c["skin_color"],
    eye_color:  c["eye_color"],
    birth_year: c["birth_year"],
    gender:     c["gender"],
    imagepath:  c["image_path"]
  )

  starships = c["starships"].split(",").map(&:strip)

  starships.each do |starship|
    star = Starship.find_or_create_by(name: starship)
    CharacterStarship.create(character: character, starship: star)
  end

  films = c["films"].split(",").map(&:strip)

  films.each do |f|
    film = Film.find_or_create_by(name: f)
    CharacterFilm.create(character: character, film: film)
  end

  # race = Race.find_or_create_by(name: c["species"])
  # race.characters.find_or_create_by(
  # name:       c["name"],
  # height:     c["height"],
  # mass:       c["mass"],
  # hair_color: c["hair_color"],
  # skin_color: c["skin_color"],
  # eye_color:  c["eye_color"],
  # birth_year: c["birth_year"],
  # gender:     c["gender"],
  # imagepath:  c["image_path"]
  # )
end

puts "imported #{Character.count} new characters"
puts "imported #{Homeworld.count} new homeworlds"
puts "imported #{Race.count} new race"
puts "imported #{Film.count} new films"
puts "imported #{Starship.count} new starships"
puts "imported #{Race.count} new races"
puts "imported #{CharacterFilm.count} new character films"
puts "imported #{CharacterStarship.count} new character starships"
