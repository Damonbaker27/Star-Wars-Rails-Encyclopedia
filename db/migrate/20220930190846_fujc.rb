class Fujc < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :race, foreign_key: true
  end
end
