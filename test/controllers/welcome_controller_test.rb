require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get get_user" do
    get welcome_get_user_url
    assert_response :success
  end

end
