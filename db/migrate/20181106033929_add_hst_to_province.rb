class AddHstToProvince < ActiveRecord::Migration[5.2]
  def change
    add_column :provinces , :hst , :decimal
  end
end
