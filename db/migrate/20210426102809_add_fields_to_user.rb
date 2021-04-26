class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :affiliation, :string
    add_column :users, :preferred_languages, :string, array: true, default: []
    add_column :users, :other_languages, :string, array: true, default: []
    add_column :users, :areas, :string, array: true, default: []
    add_column :users, :description, :text, default: ""
    add_column :users, :twitter, :string
  end
end
