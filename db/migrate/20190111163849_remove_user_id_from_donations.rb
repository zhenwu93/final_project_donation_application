class RemoveUserIdFromDonations < ActiveRecord::Migration[5.2]
  def change
    remove_column :donations, :user_id, :integer
  end
end
