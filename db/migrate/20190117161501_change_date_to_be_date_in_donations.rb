class ChangeDateToBeDateInDonations < ActiveRecord::Migration[5.2]
  def change
    change_column :donations, :date, :date
  end
end
