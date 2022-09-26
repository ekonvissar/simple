require "test_helper"

class StatikPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @basik_titile = "RoR Sample Test"
  end

  test "should get home" do
    get statik_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@basik_titile}"
  end

  test "should get help" do
    get statik_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@basik_titile}"
  end

  test "should get about" do
    get statik_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@basik_titile}"
  end

  test "should get contact" do
    get statik_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@basik_titile}"
  end
end
