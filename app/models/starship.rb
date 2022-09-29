class Starship < ApplicationRecord
  has_many :characters, through: :character_star_ships
  has_many :character_star_ships
end
