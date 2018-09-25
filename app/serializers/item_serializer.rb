class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity
  has_one :computer, serializer: ComputerSerializer
end
