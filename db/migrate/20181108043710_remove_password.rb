class RemovePassword < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers ,:password_digest
  end
end
