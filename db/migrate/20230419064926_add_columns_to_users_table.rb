class AddColumnsToUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :userable_id, :integer
    add_column :users, :userable_type, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
