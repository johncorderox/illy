require 'test_helper'

class RubysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rubys_index_url
    assert_response :success
  end

  test "should get create" do
    get rubys_create_url
    assert_response :success
  end

  test "should get new" do
    get rubys_new_url
    assert_response :success
  end

  test "should get edit" do
    get rubys_edit_url
    assert_response :success
  end

  test "should get update" do
    get rubys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rubys_destroy_url
    assert_response :success
  end

end
