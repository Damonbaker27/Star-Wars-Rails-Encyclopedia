class DropHomeworldTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :homeworlds
    drop_table :planets
  end
end
