class RemoveReference < ActiveRecord::Migration[7.0]
  def change
    remove_reference :character_starships, :characters, index: true, foreign_key: true
    remove_reference :character_starships, :starships, index: true, foreign_key: true
  end
end
