class AddColumnsToDriversVehiclesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers_vehicles , :driver_id , :integer
    add_column :drivers_vehicles, :vehicle_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
