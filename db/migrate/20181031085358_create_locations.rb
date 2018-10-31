class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :unit
      t.string :building
      t.string :street
      t.string :city
      t.string :region
      t.string :country
      t.string :address_code

      t.timestamps
    end
  end
end
