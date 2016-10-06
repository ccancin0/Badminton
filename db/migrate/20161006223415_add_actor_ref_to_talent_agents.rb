class AddActorRefToTalentAgents < ActiveRecord::Migration[5.0]
  def change
    add_reference :talent_agents, :actor, foreign_key: true
  end
end
