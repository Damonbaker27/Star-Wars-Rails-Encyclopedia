class Character < ApplicationRecord
  # relationship for the films table
  has_many :character_films
  has_many :films, through: :character_films

  # relationship for the starship table
  has_many :character_starships
  has_many :starships, through: :character_starships

  # relationship for the homeworld table
  belongs_to :homeworld
  # validations
  validates :name, presence: true

  paginates_per 15
end
