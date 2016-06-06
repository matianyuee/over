require 'test_helper'

class WorkexperienceControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get workexperience_new_url
    assert_response :success
  end

end
