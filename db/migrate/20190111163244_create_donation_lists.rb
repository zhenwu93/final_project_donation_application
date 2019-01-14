class CreateDonationLists < ActiveRecord::Migration[5.2]
  def change
    create_table :donation_lists do |t|
      t.integer :donator_id
      t.integer :driver_id
      t.integer :donation_id
      t.boolean :requested, default: false
      t.boolean :delivered, default: false 
      t.timestamps
    end
  end
end
