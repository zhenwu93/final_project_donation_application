class RemoveDeliveredFromDonationList < ActiveRecord::Migration[5.2]
  def change
    remove_column :donation_lists, :delivered, :boolean
  end
end
