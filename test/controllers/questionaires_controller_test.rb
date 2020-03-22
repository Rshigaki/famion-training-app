require 'test_helper'

class QuestionairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get questionaires_new_url
    assert_response :success
  end

  test "should get create" do
    get questionaires_create_url
    assert_response :success
  end

end
