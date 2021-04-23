require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "uniqueness of github user" do
    assert User.create(github: "testuser").valid?
    assert_not User.create(github: "testuser").valid?
  end
end
