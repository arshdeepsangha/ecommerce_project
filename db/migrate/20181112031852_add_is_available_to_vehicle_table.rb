class AddIsAvailableToVehicleTable < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles , :is_available ,:boolean
  end
end
