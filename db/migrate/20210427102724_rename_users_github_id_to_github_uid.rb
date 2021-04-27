class RenameUsersGithubIdToGithubUid < ActiveRecord::Migration[6.1]
  def change
    rename_column(:users, :github_id, :github_uid)
  end
end
