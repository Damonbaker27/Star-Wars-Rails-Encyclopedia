class CreateCharacterFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :character_films do |t|

      t.timestamps
    end
  end
end
