require 'test_helper'

class ResignationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resignation_new_url
    assert_response :success
  end

end
