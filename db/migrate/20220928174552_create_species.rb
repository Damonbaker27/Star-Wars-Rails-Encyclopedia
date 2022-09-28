class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :name
      t.string :classification
      t.string :designation
      t.integer :average_height
      t.string :skin_colors
      t.string :hair_colors
      t.string :eye_colors
      t.integer :average_lifespan
      t.string :language
      t.string :homeworld

      t.timestamps
    end
  end
end
