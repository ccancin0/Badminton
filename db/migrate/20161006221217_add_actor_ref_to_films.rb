class AddActorRefToFilms < ActiveRecord::Migration[5.0]
  def change
    add_reference :films, :actor, foreign_key: true
  end
end
