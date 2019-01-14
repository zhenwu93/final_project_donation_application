class ChangeDateToBeDatetimeInDonations < ActiveRecord::Migration[5.2]
  def change
    remove_column :donations, :date
  end
end
