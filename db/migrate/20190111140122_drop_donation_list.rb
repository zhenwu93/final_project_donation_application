class DropDonationList < ActiveRecord::Migration[5.2]
  def change
    drop_table :donation_lists
  end
end
