class AddAvatarToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :avatar, :string
  end
end
