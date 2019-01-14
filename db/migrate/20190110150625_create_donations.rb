class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :description
      t.string :date
      t.string :image

      t.timestamps
    end
  end
end
