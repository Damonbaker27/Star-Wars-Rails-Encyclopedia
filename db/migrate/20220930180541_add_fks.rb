class AddFks < ActiveRecord::Migration[7.0]
  def change
    # characers and species
    add_reference :characters, :species, foreign_key: true

    add_reference :characters, :character_films, foreign_key: true

    add_reference :films, :character_films, foreign_key: true

    add_reference :characters, :character_star_ships, foreign_key: true

    add_reference :starships, :character_star_ships, foreign_key: true
  end
end
