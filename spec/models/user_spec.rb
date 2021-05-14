require 'rails_helper'

describe User do
  it "should validate uniqueness of github user" do
    expect(create(:user, github_uid: "1", github: "testuser")).to be_valid
    expect(build(:user, github_uid: "2",github: "testuser")).to_not be_valid
  end

  it "should validate uniqueness of github uid" do
    expect(create(:user, github_uid: "1", github: "testuser1")).to be_valid
    expect(build(:user, github_uid: "1",github: "testuser2")).to_not be_valid
  end

  it "should have reviewer scope" do
    reviewer = create(:user, :reviewer)
    no_reviewer = create(:user, reviewer: false)

    expect(User.reviewers.to_a).to eq([reviewer])
  end
end
