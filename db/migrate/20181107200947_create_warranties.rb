class CreateWarranties < ActiveRecord::Migration[5.2]
  def change
    create_table :warranties do |t|
      t.string :vendor_name
      t.string :purchase_order
      t.date :start_date

      t.timestamps
    end
  end
end
