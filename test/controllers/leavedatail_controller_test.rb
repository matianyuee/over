require 'test_helper'

class LeavedatailControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get leavedatail_new_url
    assert_response :success
  end

end
