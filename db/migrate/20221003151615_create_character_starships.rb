class CreateCharacterStarships < ActiveRecord::Migration[7.0]
  def change
    create_table :character_starships do |t|

      t.timestamps
    end
  end
end
