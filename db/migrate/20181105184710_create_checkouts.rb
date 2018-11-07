class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.date :out
      t.date :in
      t.boolean :operable

      t.timestamps
    end
  end
end
