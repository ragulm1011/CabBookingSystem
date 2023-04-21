class AddColumnsToPaymentsSummariesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :payment_summaries , :rider_id , :integer
    add_column :payment_summaries , :driver_id , :integer
    add_column :payment_summaries , :ride_id , :integer
  end
end
