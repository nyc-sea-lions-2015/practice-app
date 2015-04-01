class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :practice_sessions

      t.timestamps null: false
    end
  end
end
