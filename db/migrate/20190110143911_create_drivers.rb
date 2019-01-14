class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :password_digest
      t.string :username

      t.timestamps
    end
  end
end
