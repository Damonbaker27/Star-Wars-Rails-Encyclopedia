class Newnew < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :character_films_id, foreign_key: false

    add_reference :characters, :character_star_ships_id, foreign_key: false
  end
end
