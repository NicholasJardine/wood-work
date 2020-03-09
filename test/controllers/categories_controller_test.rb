require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categories_index_url
    assert_response :success
  end

  test "should get show" do
    get categories_show_url
    assert_response :success
  end

  test "should get home" do
    get categories_home_url
    assert_response :success
  end

  test "should get art" do
    get categories_art_url
    assert_response :success
  end

  test "should get garden" do
    get categories_garden_url
    assert_response :success
  end

end
