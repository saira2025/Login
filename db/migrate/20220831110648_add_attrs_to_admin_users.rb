class AddAttrsToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :First_name, :string
    add_column :admin_users, :last_name, :string
  end
end
