class TicketSerializer < ActiveModel::Serializer
  attributes :id, :title, :status, :priority, :description
end
