class AddRepCountToLiftWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :lift_workouts, :rep_count, :text, array: true, default: []
  end
end
