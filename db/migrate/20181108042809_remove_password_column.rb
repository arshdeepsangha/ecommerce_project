class RemovePasswordColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers ,:password
  end

  def add
    add_column :customers ,:password , :digest
  end
end
