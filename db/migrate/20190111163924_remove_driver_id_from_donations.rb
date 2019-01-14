class RemoveDriverIdFromDonations < ActiveRecord::Migration[5.2]
  def change
    remove_column :donations, :driver_id, :integer
  end
end
