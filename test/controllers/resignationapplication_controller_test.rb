require 'test_helper'

class ResignationapplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resignationapplication_new_url
    assert_response :success
  end

end
