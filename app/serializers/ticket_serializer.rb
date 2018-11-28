class TicketSerializer < ActiveModel::Serializer
  attributes :id, :title, :status, :priority, :description, :item_id
end
