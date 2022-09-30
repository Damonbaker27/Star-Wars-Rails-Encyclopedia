class Sdfsdf < ActiveRecord::Migration[7.0]
  def change
    remove_reference :characters, :character_films_id
    remove_reference :characters, :character_star_ship_id
  end
end
