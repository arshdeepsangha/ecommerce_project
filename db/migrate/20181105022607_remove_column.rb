class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :deals , :deal_rate_decimal , :string
  end
end
