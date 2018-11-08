class AddPasswordColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :customers ,:password_digest , :encrypted_password
  end
end
