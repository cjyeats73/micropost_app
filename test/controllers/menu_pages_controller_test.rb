require "test_helper"

class MenuPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get menu_pages_Home_url
    assert_response :success
    assert_select "title", "Home | My Micropost App"
  end

  test "should get Help" do
    get menu_pages_Help_url
    assert_response :success
    assert_select "title", "Help | My Micropost App"
  end

  test "should get About" do
    get menu_pages_About_url
    assert_response :success
    assert_select "title", "About | My Micropost App"
  end

end
