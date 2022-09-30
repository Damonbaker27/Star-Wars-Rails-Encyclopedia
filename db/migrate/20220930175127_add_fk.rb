class AddFk < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :homeworld, foreign_key: true
  end
end
