class Fuck < ActiveRecord::Migration[7.0]
  def change
    add_column :character_films, :character_id, :integer
    add_column :character_films, :film_id, :integer
  end
end
