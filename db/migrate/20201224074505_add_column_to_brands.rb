class AddColumnToBrands < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :prize, :int
  end
end
