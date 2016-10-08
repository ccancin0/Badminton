class AddCommentRefToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :comment, foreign_key: true
  end
end
