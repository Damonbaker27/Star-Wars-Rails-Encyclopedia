class Homeworld < ApplicationRecord
  has_many :characters

  validates :name, presence: true
end
