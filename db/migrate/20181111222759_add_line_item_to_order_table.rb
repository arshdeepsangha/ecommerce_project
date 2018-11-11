class AddLineItemToOrderTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :line_item, foreign_key: true
  end
end
