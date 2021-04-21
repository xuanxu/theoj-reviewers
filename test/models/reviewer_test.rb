require "test_helper"

class ReviewerTest < ActiveSupport::TestCase
  test "uniqness of github user" do
    assert Reviewer.create(github: "testuser").valid?
    assert_not Reviewer.create(github: "testuser").valid?
  end
end
