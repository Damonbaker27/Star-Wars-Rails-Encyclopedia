class CharacterFilm < ApplicationRecord
  belongs_to :character
  belongs_to :film

  validates :character, presence: true
end
