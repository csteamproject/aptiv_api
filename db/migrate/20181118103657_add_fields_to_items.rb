class AddFieldsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :serial_number, :string
    add_column :items, :brand, :string
    add_column :items, :model, :string
    add_column :items, :checked_out, :boolean
  end
end
