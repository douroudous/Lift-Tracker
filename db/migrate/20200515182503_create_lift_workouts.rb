class CreateLiftWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :lift_workouts do |t|
      t.integer :weight
      t.belongs_to :workout, null: false, foreign_key: true
      t.belongs_to :lift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
