class RemoveImageFromDonations < ActiveRecord::Migration[5.2]
  def change
    remove_column :donations, :image, :string
  end
end
