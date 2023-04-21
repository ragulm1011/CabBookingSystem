class AddColumnsToRidesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :rides , :rider_id , :integer
    add_column :rides , :driver_id , :integer
    add_column :rides , :booking_request_id , :integer

  end
end
