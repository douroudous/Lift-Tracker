class AddRoutineToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_reference :workouts, :routine, foreign_key: true
  end
end
