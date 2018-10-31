class Item < ApplicationRecord
  has_one :computer
  has_one :location

  scope :comps, -> { left_outer_joins(:computer).select('computers.*, items.*' )}
end
