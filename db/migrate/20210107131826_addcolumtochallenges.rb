class Addcolumtochallenges < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :is_complete, :boolean,  default: false
  end
end
