class Drop < ActiveRecord::Migration[7.0]
  def down
    drop_table :Characters
  end
end
