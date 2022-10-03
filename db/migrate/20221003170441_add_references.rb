class AddReferences < ActiveRecord::Migration[7.0]
  def change
    remove_reference :character_starships, :character, index: true, foreign_key: true
    remove_reference :character_starships, :starship, index: true, foreign_key: true
  end
end
