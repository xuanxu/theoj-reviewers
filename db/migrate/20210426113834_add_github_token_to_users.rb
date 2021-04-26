class AddGithubTokenToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :github_token, :string
    add_column :users, :github_id, :string, null: false
  end
end
