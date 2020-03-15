require 'test_helper'

class Users::ActivatesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_activates_create_url
    assert_response :success
  end

  test "should get edit" do
    get users_activates_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_activates_update_url
    assert_response :success
  end

end
