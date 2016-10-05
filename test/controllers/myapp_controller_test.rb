require 'test_helper'

class MyappControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myapp_index_url
    assert_response :success
  end

end
