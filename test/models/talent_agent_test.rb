require 'test_helper'

class TalentAgentTest < ActiveSupport::TestCase
  test "should be no error, valid values" do
   		talent_agents = talent_agents(:one)
     	assert talent_agents.valid?
   end

   test "should allow blank for dob, " do
   		talent_agents = talent_agents(:two)
     	assert talent_agents.valid?
   end

   test "should be not allow lengthy first name" do
   		talent_agents = talent_agents(:three)
     	assert talent_agents.valid?
   end

   test "should be not allow lengthy last name" do
   		talent_agents = talent_agents(:four)
     	assert talent_agents.valid?
   end
end
