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

Character.delete_all
Planet.delete_all
character_file = Rails.root.join("db/characters.csv")

csv_data = File.read(character_file)
characters = CSV.parse(csv_data, headers: true, encoding: "utf-8")

characters.each do |c|
  puts test
end
