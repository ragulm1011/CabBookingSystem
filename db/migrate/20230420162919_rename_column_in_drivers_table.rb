class RenameColumnInDriversTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :drivers, :stanby_city, :standby_city
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
