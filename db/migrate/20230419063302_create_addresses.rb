class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :door_no
      t.string :street
      t.string :city
      t.string :district
      t.string :state
      t.integer :pincode

      t.timestamps
    end
  end
end
