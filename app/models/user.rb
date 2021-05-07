require 'editors'

class User < ApplicationRecord
  validates :github, uniqueness: true
  validates :github_uid, uniqueness: true

  scope :reviewers, -> { where(reviewer: true) }

  def self.from_github_omniauth(auth)
    where(github_uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.github = auth.info.nickname
      user.github_avatar_url = auth.info.image
      user.github_token = auth.credentials.token
      user.save
    end
  end

  def update_editor_status
    self.editor = Editors.include_user?(self)
    save
  end
end
