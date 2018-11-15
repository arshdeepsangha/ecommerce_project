class AddSeveralColumnsIntoOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders , :total ,:decimal
    add_column :orders , :taxes ,:decimal
    add_column :orders , :tax_info ,:string
    add_column :orders , :grand_total ,:decimal
  end
end
