class CreateReviewers < ActiveRecord::Migration[6.1]
  def change
    create_table :reviewers do |t|
      t.string :first_name
      t.string :last_name
      t.string :github, null: false
      t.string :orcid
      t.string :email
      t.string :url
      t.string :github_avatar_url

      t.timestamps
    end

    add_index :reviewers, :github
    add_index :reviewers, :orcid
    add_index :reviewers, :last_name
  end
end
