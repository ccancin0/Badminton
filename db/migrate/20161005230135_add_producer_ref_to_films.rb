class AddProducerRefToFilms < ActiveRecord::Migration[5.0]
  def change
    add_reference :films, :producer, foreign_key: true
  end
end
