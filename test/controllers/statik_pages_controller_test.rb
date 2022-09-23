require "test_helper"

class StatikPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get statik_pages_home_url
    assert_response :success
    assert_select "title", "Home | RoR Sample Test"
  end

  test "should get help" do
    get statik_pages_help_url
    assert_response :success
    assert_select "title", "Help | RoR Sample Test"
  end

  test "should get about" do
    get statik_pages_about_url
    assert_response :success
    assert_select "title", "About | RoR Sample Test"
  end
end
