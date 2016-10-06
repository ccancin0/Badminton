class CreateProducers < ActiveRecord::Migration[5.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.text :greeting
      t.text :mission_statement
      t.date :activation_date

      t.timestamps
    end
  end
end
