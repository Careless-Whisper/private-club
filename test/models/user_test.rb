require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(first_name: "Example User", last_name: "gzprgkr", password:'azerty', email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first name should be present" do
    @user.first_name = ''
    assert not(@user.valid?)
  end

  test "first name should not contain space" do
    @user.first_name = ''
    assert not(@user.valid?)
  end

  test "should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert not(duplicate_user.valid?)
  end

end
