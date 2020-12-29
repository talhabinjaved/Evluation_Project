class Adduniqueindex < ActiveRecord::Migration[6.1]
  def change
    add_index :tricks, [:customer_id, :challenge_id], unique: true
  end
end
