class RemoveIsDriverFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :isDriver, :boolean
  end
end
