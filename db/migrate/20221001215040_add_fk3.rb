class AddFk3 < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :characters, :homeworlds
  end
end
