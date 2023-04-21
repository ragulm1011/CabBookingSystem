class CreateBookingRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_requests do |t|
      t.string :city
      t.string :booking_status
      t.string :vehicle_tye

      t.timestamps
    end
  end
end
