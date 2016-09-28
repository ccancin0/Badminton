class CreateReviewers < ActiveRecord::Migration[5.0]
  def change
    create_table :reviewers do |t|
      t.string :handle
      t.string :phone
      t.string :status
      t.integer :years_active
      t.timestamps
    end
  end
end
