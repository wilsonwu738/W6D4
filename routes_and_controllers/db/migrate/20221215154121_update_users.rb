class UpdateUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :username
    remove_column :users, :email
    change_column :users, :username, :string, unique: true
  end
end
