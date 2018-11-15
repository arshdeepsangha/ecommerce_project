class RemoveVehicleFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders , :vehicle_id
  end
end
