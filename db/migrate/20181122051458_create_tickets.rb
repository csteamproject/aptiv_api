class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :status
      t.integer :priority
      t.text :description
      t.references :item

      t.timestamps
    end
  end
end
