require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get users_list_url
    assert_response :success
  end

end
