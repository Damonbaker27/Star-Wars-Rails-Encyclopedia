class CreateCharacterHomeworlds < ActiveRecord::Migration[7.0]
  def change
    create_table :character_homeworlds do |t|
      t.integer :character_ID
      t.integer :homeworld_ID

      t.timestamps
    end
  end
end
