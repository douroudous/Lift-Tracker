class Workout < ApplicationRecord
  belongs_to :routine, optional: true
  has_many :lift_workouts

  def rep_count_input
    # FIX THIS TO WORK FOR NEW!
    rep_array = lift_workouts.order(:id).map.with_index(1) do |lw, index|
      { :position => index, :lift_workout => lw.id, :reps => lw.rep_count.map(&:to_i) }
    end
    rep_array.to_json
  end
end
