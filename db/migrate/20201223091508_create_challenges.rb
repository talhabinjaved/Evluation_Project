class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
