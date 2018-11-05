class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :deals, :deal_rate, :decimal
  end
end
