class CreatePracticeSessions < ActiveRecord::Migration
  def change
    create_table :practice_sessions do |t|
      t.integer :duration, null: false

      t.timestamps null: false
    end
  end
end
