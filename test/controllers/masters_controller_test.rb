require 'test_helper'

class MastersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get masters_index_url
    assert_response :success
  end

  test "should get new" do
    get masters_new_url
    assert_response :success
  end

  test "should get create" do
    get masters_create_url
    assert_response :success
  end

  test "should get delete" do
    get masters_delete_url
    assert_response :success
  end

end
