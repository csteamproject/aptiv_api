class Item < ApplicationRecord
  has_one :computer

  scope :comps, -> { left_outer_joins(:computer).select('items.*, computers.*') }
end
