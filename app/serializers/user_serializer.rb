class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username
  has_one :role, serializer: RoleSerializer
  has_one :location, serializer: LocationSerializer
end
