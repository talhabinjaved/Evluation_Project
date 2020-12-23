class ChangeForeignKeyForProje < ActiveRecord::Migration[6.1]
  def change
    rename_column :challenges, :user_id, :brand_id

  end
end
