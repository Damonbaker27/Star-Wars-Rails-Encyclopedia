class CreateHomeworlds < ActiveRecord::Migration[7.0]
  def change
    create_table :homeworlds do |t|
      t.string :name
      t.integer :rotation_period
      t.integer :orbital_period
      t.integer :diameter
      t.string :climate
      t.string :gravity
      t.string :terrain
      t.integer :surface_water
      t.integer :population

      t.timestamps
    end
  end
end
