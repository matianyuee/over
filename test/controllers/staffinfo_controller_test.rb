require 'test_helper'

class StaffinfoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staffinfo_new_url
    assert_response :success
  end

  test "should get edit" do
    get staffinfo_edit_url
    assert_response :success
  end

  test "should get index" do
    get staffinfo_index_url
    assert_response :success
  end

end
