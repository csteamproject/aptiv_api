class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :item_delete_date, :user_id, :serial_number, :brand, :model, :operable, :location_id
  has_one :computer, serializer: ComputerSerializer
end
