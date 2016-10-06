class AddFilmRefToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :film, foreign_key: true
  end
end
