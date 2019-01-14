class User < ApplicationRecord
  has_many :donation_lists
  has_many :donations, through: :donation_lists

  has_secure_password
   # validates :username, uniqueness: { case_sensitive: false }
   # validates :email, confirmation:true, uniqueness:true

end
