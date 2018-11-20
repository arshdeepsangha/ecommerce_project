class RemoveCartFromLineItem2 < ActiveRecord::Migration[5.2]
  def change
    #remove_foreign_key :line_items, column: :cart_id
  end
end
