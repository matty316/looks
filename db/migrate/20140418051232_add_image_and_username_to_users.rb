class AddImageAndUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :username, :string
  end
end
