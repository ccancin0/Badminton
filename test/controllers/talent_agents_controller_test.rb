require 'test_helper'

class TalentAgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @talent_agent = talent_agents(:one)
  end

  test "should get index" do
    get talent_agents_url
    assert_response :success
  end

  test "should get new" do
    get new_talent_agent_url
    assert_response :success
  end

  test "should create talent_agent" do
    assert_difference('TalentAgent.count') do
      post talent_agents_url, params: { talent_agent: { dob: @talent_agent.dob, first_name: @talent_agent.first_name, last_name: @talent_agent.last_name, pitch: @talent_agent.pitch } }
    end

    assert_redirected_to talent_agent_url(TalentAgent.last)
  end

  test "should show talent_agent" do
    get talent_agent_url(@talent_agent)
    assert_response :success
  end

  test "should get edit" do
    get edit_talent_agent_url(@talent_agent)
    assert_response :success
  end

  test "should update talent_agent" do
    patch talent_agent_url(@talent_agent), params: { talent_agent: { dob: @talent_agent.dob, first_name: @talent_agent.first_name, last_name: @talent_agent.last_name, pitch: @talent_agent.pitch } }
    assert_redirected_to talent_agent_url(@talent_agent)
  end

  test "should destroy talent_agent" do
    assert_difference('TalentAgent.count', -1) do
      delete talent_agent_url(@talent_agent)
    end

    assert_redirected_to talent_agents_url
  end
end
