require 'test_helper'

class DepartmentinfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departmentinfo_index_url
    assert_response :success
  end

  test "should get new" do
    get departmentinfo_new_url
    assert_response :success
  end

  test "should get edit" do
    get departmentinfo_edit_url
    assert_response :success
  end

end
