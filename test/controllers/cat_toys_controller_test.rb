require 'test_helper'

class CatToysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cat_toys_new_url
    assert_response :success
  end

  test "should get create" do
    get cat_toys_create_url
    assert_response :success
  end

  test "should get show" do
    get cat_toys_show_url
    assert_response :success
  end

  test "should get index" do
    get cat_toys_index_url
    assert_response :success
  end

end
