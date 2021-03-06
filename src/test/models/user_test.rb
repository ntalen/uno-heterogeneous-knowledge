require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save
  end

  test "should not save user without password" do
    user = User.new
    user.email = "test10@example.com"
    assert_not user.save
  end

  test "should save user with appropriate attributes" do
    user = User.new
    user.username = "test"
    user.email = "test123456@example.com"
    user.password = "asdasdastr4325234324sdfds"
    user.password_confirmation = "asdasdastr4325234324sdfds"
    assert user.save
  end

  test "should not save user with existing email" do
    user = User.new
    user.username = "test"
    user.email = "test1@example.com"
    user.password = "asdasdastr4325234324sdfds"
    user.password_confirmation = "asdasdastr4325234324sdfds"
    assert_not user.save
  end
end
