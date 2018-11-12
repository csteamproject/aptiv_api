class LocationSerializer < ActiveModel::Serializer
  attributes :id, :unit, :building, :street, :city, :region, :country, :address_code
end
