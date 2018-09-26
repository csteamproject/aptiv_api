class ComputerSerializer < ActiveModel::Serializer
  attributes :id, :utag, :cpu, :ram, :hdd
end
