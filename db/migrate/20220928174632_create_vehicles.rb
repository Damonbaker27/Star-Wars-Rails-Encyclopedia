class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.integer :cost_in_credits
      t.integer :length
      t.integer :crew
      t.integer :passengers
      t.integer :cargo_capacity
      t.string :consumables
      t.string :vehicle_class

      t.timestamps
    end
  end
end
