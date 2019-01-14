class DropDrivers < ActiveRecord::Migration[5.2]
  def change
    drop_table :drivers
  end
end
