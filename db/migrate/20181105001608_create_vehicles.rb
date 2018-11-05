class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :model
      t.decimal :price
      t.string :body_type
      t.string :engine
      t.string :transmission
      t.integer :stock
      t.references :deal, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
