require 'test_helper'

class HousesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get houses_new_url
    assert_response :success
  end

  test "should get create" do
    get houses_create_url
    assert_response :success
  end

  test "should get search" do
    get houses_search_url
    assert_response :success
  end

  test "should get result" do
    get houses_result_url
    assert_response :success
  end

  test "should get show" do
    get houses_show_url
    assert_response :success
  end

end
