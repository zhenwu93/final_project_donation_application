class DonationListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :donation_id
end
