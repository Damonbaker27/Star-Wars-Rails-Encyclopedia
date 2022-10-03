class AddFkToCharacterfilm < ActiveRecord::Migration[7.0]
  def change
    add_reference :character_films, :character, index: true, foreign_key: true
    add_reference :character_films, :film, index: true, foreign_key: true
  end
end
