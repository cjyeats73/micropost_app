require "test_helper"

class MenuPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get menu_pages_Home_url
    assert_response :success
  end

  test "should get Help" do
    get menu_pages_Help_url
    assert_response :success
  end
end
