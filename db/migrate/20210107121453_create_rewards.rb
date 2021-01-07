class CreateRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :rewards do |t|
      t.references :trick, null: false, foreign_key: true,unique: true
      t.references :challenge, null: false, foreign_key: true,unique: true


      t.timestamps
    end
  end
end
