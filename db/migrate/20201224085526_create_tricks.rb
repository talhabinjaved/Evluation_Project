class CreateTricks < ActiveRecord::Migration[6.1]
  def change
    create_table :tricks do |t|
      t.string :body
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
