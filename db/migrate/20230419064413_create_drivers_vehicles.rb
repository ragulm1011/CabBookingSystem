class CreateDriversVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers_vehicles do |t|

      t.timestamps
    end
  end
end
