class CreatePaymentDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_descriptions do |t|
      t.string :mode_of_payment
      t.integer :amount
      t.string :credentials
      t.string :remarks

      t.timestamps
    end
  end
end
