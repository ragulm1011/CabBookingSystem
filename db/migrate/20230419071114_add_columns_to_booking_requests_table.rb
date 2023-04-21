class AddColumnsToBookingRequestsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :booking_requests , :from_location_id , :integer
    add_column :booking_requests , :to_location_id , :integer
  end
end
