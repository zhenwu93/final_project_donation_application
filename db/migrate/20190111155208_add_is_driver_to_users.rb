class AddIsDriverToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isDriver, :boolean, default: false
  end
end
