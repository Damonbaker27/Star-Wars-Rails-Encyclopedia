class CreateCharacterStarShips < ActiveRecord::Migration[7.0]
  def change
    create_table :character_star_ships do |t|
      t.integer :character_ID
      t.integer :starship_ID

      t.timestamps
    end
  end
end
