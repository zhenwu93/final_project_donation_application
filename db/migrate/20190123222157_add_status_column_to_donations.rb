class AddStatusColumnToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :status, :string, default:'Delivered'
  end
end
