class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :city
      t.string :email
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
