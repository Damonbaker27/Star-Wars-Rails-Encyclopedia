class AddPictures < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :imagepath, :string
    add_column :films, :imagepath, :string
    add_column :homeworlds, :imagepath, :string
  end
end
