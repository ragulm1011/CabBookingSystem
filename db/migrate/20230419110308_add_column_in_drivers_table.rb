class AddColumnInDriversTable < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers , :stanby_city , :string
  end
end
