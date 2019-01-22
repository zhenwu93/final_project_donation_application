class AddDestinationToDonation < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :destination, :string
  end
end
