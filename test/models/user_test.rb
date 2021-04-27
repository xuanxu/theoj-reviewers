require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "uniqueness of github user" do
    create(:user)
    assert create(:user, github_uid: "1", github: "testuser").valid?
    assert_not build(:user, github_uid: "2",github: "testuser").valid?
  end

  test "uniqueness of github uid" do
    assert create(:user, github_uid: "1", github: "testuser1").valid?
    assert_not build(:user, github_uid: "1",github: "testuser2").valid?
  end

  test "reviewer scope" do
    reviewer = create(:user, :reviewer)
    no_reviewer = create(:user, reviewer: false)

    assert_equal User.reviewers.to_a, [reviewer]
  end
end
