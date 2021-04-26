require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "uniqueness of github user" do
    assert User.create(github_id: "1", github: "testuser").valid?
    assert_not User.create(github_id: "2",github: "testuser").valid?
  end
end
