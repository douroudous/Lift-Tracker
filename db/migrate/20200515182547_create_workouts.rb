class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :body_weight, null: false
      t.date :workout_date, null: false

      t.timestamps
      t.index :workout_date, unique: true
    end
  end
end
