class ChangeForeignKeyForProject < ActiveRecord::Migration[6.1]
  def change
    rename_column :challenges, :brand_id, :user_id
  end
end
