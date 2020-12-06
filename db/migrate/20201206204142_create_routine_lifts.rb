class CreateRoutineLifts < ActiveRecord::Migration[6.0]
  def change
    create_table :routine_lifts do |t|
      t.integer :rep_count, null: false
      t.integer :set_count, null: false
      t.references :routine, null: false, foreign_key: true
      t.references :lift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
