class Film < ApplicationRecord
  has_many :character_films
  has_many :character, through: :character_films
end
