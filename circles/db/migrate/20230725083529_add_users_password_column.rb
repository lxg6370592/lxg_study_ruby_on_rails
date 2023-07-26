class AddUsersPasswordColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :crypted_password, :string, null: false
    add_column :users, :salt, :string, null: false

    remove_column :users, :password

    # need migration for old data
  end
end