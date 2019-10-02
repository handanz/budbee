class AddUsernameFirstnameLastnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
