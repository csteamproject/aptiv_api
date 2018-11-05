class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :item_delete_date
  has_one :computer, serializer: ComputerSerializer
end
