class CreatePaymentSummaries < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_summaries do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
