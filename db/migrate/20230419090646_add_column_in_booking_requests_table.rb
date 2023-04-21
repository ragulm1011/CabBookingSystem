class AddColumnInBookingRequestsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :booking_requests , :rider_id , :integer
  end
end
