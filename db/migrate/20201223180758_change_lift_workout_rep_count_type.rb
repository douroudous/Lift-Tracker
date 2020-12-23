class ChangeLiftWorkoutRepCountType < ActiveRecord::Migration[6.0]
  def up
    remove_column :lift_workouts, :rep_count
    add_column :lift_workouts, :rep_count, :integer
  end

  def down
    remove_column :lift_workouts, :rep_count
    add_column :lift_workouts, :rep_count, :text, array: true, default: []
  end
end
