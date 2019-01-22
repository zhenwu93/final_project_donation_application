class RemoveRequestedFromDonationList < ActiveRecord::Migration[5.2]
  def change
    remove_column :donation_lists, :requested, :boolean
  end
end
