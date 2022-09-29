class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :height
      t.integer :mass
      t.string :hair_color
      t.string :skin_color
      t.string :eye_color
      t.integer :birth_year
      t.string :gender
      t.string :homeworld
      t.string :species

      t.timestamps
    end
  end
end
