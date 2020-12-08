class Workout < ApplicationRecord
  belongs_to :routine, optional: true
  has_many :lift_workouts

  def rep_count_input
    # FIX THIS TO WORK FOR NEW!
    # rep_array = lift_workouts.order(:id).map.with_index(1) do |lw, index|
    #   { :position => index, :lift_workout => lw.id, :reps => lw.rep_count.map(&:to_i) }
    # end
    # rep_array.to_json
  end

  # need to pass max reps
  def lift_workout_list
    return new_lift_workout_list unless persisted?

    lift_workouts.includes(:lift).order(:id)
  end

  def new_lift_workout_list
    return unless routine

    routine.routine_lifts.includes(:lift).order(:id).map do |rl|
      LiftWorkout.new(
        lift: rl.lift,
        rep_count: Array.new(rl.set_count)
        # 'max' =>  rl.rep_count
      )
    end
  end
end
