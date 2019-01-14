class AddDateToToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :date, :datetime
  end
end
