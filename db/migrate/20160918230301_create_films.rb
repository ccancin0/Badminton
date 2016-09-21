class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :genre
      t.integer :release_year
      t.string :imdb_url

      t.timestamps
    end
  end
end
