class AddUserIdToDonationLists < ActiveRecord::Migration[5.2]
  def change
    add_column :donation_lists, :user_id, :integer
  end
end
