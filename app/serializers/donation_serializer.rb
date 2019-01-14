class DonationSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :avatar
  # has_many :donation_lists
end
