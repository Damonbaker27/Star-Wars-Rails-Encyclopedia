class CreateCharacterFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :character_films do |t|
      t.integer :character_ID
      t.integer :Film_ID

      t.timestamps
    end
  end
end
