class DropCustomerColumn3 < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders , :customer_id
  end
end
