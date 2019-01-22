class DonationSerializer < ActiveModel::Serializer
  attributes :id, :description, :avatar, :created_at, :status, :destination
  # has_many :donation_lists
end
