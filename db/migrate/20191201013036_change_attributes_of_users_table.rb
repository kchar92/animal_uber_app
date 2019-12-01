class ChangeAttributesOfUsersTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :first_name, :name
    rename_column :users, :last_name, :email
    add_column :users, :password_digest, :string
  end
end
