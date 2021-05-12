require 'github'

class Editors
  def self.include_user?(user)
    user_login = user.is_a?(String) ? user : user.github
    GitHub.instance.user_is_in_editors_team?(user_login)
  end
end