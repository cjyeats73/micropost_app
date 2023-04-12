require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @category = Category.create(name: "Comment")
  end

  test "should get index" do
    get category_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

end