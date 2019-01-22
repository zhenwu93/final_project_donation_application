class Donation < ApplicationRecord
  has_many :donation_lists
  has_many :users, through: :donation_lists
end
