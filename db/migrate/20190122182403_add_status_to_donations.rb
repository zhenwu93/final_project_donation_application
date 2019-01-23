class AddStatusToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :status, :string, default: "Accepted"
  end
end
