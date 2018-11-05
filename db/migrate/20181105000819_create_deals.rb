class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :name
      t.string :deal_rate_decimal

      t.timestamps
    end
  end
end
