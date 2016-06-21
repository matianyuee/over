require 'test_helper'

class LeavedatailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get leavedatails_new_url
    assert_response :success
  end

end
