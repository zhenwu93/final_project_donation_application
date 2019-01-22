class RemoveDriverIdFromDonationLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :donation_lists, :driver_id, :integer
  end
end
