class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :heading
      t.string :permalink
      t.text :comment_text
      t.date :posted_on
      t.timestamps
    end
  end
end
