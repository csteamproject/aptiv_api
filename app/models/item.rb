class Item < ApplicationRecord
  has_one :computer
  has_one :location
  has_one :user
  accepts_nested_attributes_for :computer

  scope :comps, -> { left_outer_joins(:computer).select('computers.*, items.*' )}
end
