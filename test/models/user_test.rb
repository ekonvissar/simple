require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not bee too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |vallid_address|
      @user.email = vallid_address
      assert @user.valid?, "#{vallid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.comfoo@bar+baz.com]
    invalid_addresses.each do |invallid_address|
      @user.email = invallid_address
      assert_not @user.valid?, "#{invallid_address.inspect} should be invalid"
    end
  end

  test "email adress should be unique" do
    duplcate_user = @user.dup
   duplcate_user.email = @user.email.upcase
   @user.save
   assert_not duplcate_user.valid?
  end

  test "password should have a minimum length" do
    @user_password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end