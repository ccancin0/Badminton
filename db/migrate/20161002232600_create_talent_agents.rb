class CreateTalentAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :talent_agents do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :pitch

      t.timestamps
    end
  end
end
