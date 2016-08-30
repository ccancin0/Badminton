require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get sdflming" do
    get static_pages_sdflming_url
    assert_response :success
  end

end
