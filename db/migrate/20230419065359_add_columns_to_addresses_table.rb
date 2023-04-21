class AddColumnsToAddressesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses , :addressable_id, :integer
    add_column :addresses , :addressable_type, :string

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
