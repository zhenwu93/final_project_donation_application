class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address, :phone_number, :email, :username
  # has_many :donations
end
