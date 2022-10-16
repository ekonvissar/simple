require "test_helper"

class StatikPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_url
    assert_response :success
    assert_select "title", "Home | RoR Sample App"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | RoR Sample App"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | RoR Sample App"
  end

  test "should get contacts" do
    get contacts_url
    assert_response :success
    assert_select "title", "Contacts | RoR Sample App"
  end
end
