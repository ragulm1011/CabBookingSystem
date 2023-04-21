class AddColumnsToBookingRequestsTable1 < ActiveRecord::Migration[7.0]

  def change
    add_column :booking_requests , :from_location_name , :string
    add_column :booking_requests , :to_location_name , :string
  end
end
