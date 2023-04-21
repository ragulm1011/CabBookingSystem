class AddColumnToPaymentSummariesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :payment_summaries, :payment_description_id , :integer
  end
end
