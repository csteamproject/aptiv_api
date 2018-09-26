class CreateComputers < ActiveRecord::Migration[5.2]
  def change
    create_table :computers do |t|
      t.string :utag
      t.decimal :cpu, precision: 5, scale: 2
      t.integer :ram
      t.integer :hdd
      t.references :item

      t.timestamps
    end
  end
end
