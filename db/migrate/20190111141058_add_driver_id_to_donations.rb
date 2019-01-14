class AddDriverIdToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :driver_id, :integer
  end
end
