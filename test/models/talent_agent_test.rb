require 'test_helper'

class TalentAgentTest < ActiveSupport::TestCase
  test "should be no error, valid value for name" do
   		talent_agents = talent_agents(:one)
     	assert talent_agents.valid?
   end
end
