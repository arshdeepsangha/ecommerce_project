class AddStuffForUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users , :firstname , :string
    add_column :users , :lastname , :string
    add_column :users , :address , :string
    add_column :users , :city , :string
    add_foreign_key :users , :provinces
  end
end
