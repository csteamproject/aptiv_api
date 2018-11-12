class ItemsAndUsersLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :location
    add_reference :items, :location
  end
end
