class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :type, null: false

      t.timestamps null: false
    end
  end
end
