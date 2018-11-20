class DropCustomerColumn < ActiveRecord::Migration[5.2]
  def change
    #remove_foreign_key :orders, :customer
  end
end
