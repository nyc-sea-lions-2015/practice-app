class CreatePracticeSessions < ActiveRecord::Migration
  def change
    create_table :practice_sessions do |t|
      t.integer :duration
      t.integer :user_id
      t.integer :guitar_id

      t.timestamps null: false
    end
  end
end
