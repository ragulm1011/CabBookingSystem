class RenameColumnNameInBookingRequestsTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :booking_requests , :vehicle_tye , :vehicle_type
  end
end
