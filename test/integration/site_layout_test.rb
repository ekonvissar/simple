require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
 test "layout links" do
  get root_path
  assert_template 'static_pages/home'
  asserts_select "a[href=?]", root_path, count: 2
  asserts_select "a[href=?]", help_path
  asserts_select "a[href=?]", about_path
  asserts_select "a[href=?]", contact_path
 end
end
