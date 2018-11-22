class AddFieldsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :serial_number, :string
    add_column :items, :brand, :string
    add_column :items, :model, :string
    add_column :items, :operable, :boolean
    add_column :items, :checkout_user_id, :bigint
    add_foreign_key :items, :users, column: :checkout_user_id, primary_key: :id
  end
end
