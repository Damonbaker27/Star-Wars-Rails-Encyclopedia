class Film < ApplicationRecord
  has_many :character_films
  has_many :characters, through: :character_films
end
