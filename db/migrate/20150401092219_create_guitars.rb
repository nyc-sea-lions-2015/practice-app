class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :style, null: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
