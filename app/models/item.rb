class Item < ApplicationRecord
  has_one :computer, dependent: :delete
  has_one :location
  has_one :user
  has_one :warranty
  accepts_nested_attributes_for :computer

  scope :comps, -> { left_outer_joins(:computer).select('computers.*, items.*' )}
end
