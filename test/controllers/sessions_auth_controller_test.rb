require 'test_helper'

class SessionsAuthControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sessions_auth_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sessions_auth_destroy_url
    assert_response :success
  end

end
