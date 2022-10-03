class Starship < ApplicationRecord
  has_many :characterStarships
  has_many :characters, through: :characterStarships
end
