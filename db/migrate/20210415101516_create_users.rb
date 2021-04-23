class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :github, null: false
      t.string :orcid
      t.string :email
      t.string :url
      t.string :github_avatar_url
      t.boolean :admin, default: false
      t.boolean :reviewer, default: false

      t.timestamps
    end

    add_index :users, :github
    add_index :users, :orcid
    add_index :users, :last_name
  end
end
