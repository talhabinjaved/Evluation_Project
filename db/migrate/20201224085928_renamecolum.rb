class Renamecolum < ActiveRecord::Migration[6.1]
  def change
    rename_column :tricks, :user_id, :customer_id
  end
end
