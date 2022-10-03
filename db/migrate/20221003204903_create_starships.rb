class CreateStarships < ActiveRecord::Migration[7.0]
  def change
    remove_reference :character_starships, :character, index: true, foreign_key: true
    remove_reference :character_starships, :starship, index: true, foreign_key: true

    drop_table :starships

    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.integer :cost_in_credits
      t.integer :length
      t.integer :max_atmospgering_speed
      t.integer :crew
      t.integer :passengers
      t.integer :cargo_capacity
      t.string :consumables
      t.integer :hyperdrive_rating
      t.integer :mglt
      t.string :starship_class
      t.string :imagepath

      t.timestamps
    end
  end
end
