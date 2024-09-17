require "test_helper"

class SControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get s_index_url
    assert_response :success
  end
end
