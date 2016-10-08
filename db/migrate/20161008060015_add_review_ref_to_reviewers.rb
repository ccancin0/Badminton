class AddReviewRefToReviewers < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviewers, :review, foreign_key: true
  end
end
