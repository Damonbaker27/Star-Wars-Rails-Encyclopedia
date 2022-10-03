class AddTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :starships
  end
end
