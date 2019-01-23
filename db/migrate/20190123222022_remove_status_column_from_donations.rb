class RemoveStatusColumnFromDonations < ActiveRecord::Migration[5.2]
  def change
    remove_column :donations, :status, :string
  end
end
