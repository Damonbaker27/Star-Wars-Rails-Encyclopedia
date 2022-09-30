class AddFks2 < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :races, foreign_key: true
  end
end
