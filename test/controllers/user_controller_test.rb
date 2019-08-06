require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get author" do
    get user_author_url
    assert_response :success
  end

end
