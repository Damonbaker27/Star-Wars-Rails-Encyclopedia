class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :name
      t.string :opening_crawl
      t.string :director
      t.string :release_date

      t.timestamps
    end
  end
end
