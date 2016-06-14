require 'test_helper'

class PositionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get position_new_url
    assert_response :success
  end

  test "should get edit" do
    get position_edit_url
    assert_response :success
  end

  test "should get index" do
    get position_index_url
    assert_response :success
  end

  test "should get show" do
    get position_show_url
    assert_response :success
  end

end
