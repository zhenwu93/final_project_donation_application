class RemoveDonatorIdFromDonationLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :donation_lists, :donator_id, :integer
  end
end
