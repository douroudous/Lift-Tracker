class WorkoutService
  def self.create_new(params)
    Workout.new(build_params(params))
  end

  def self.update(workout, params)
    workout.update(build_params(params))
  end

  private_class_method def self.build_params(params)
    update_params = params.except(:rep_counts)
    rep_counts = JSON.parse(params[:rep_counts])

    lift_workouts = LiftWorkout.where(id: rep_counts.map{ |r| r['lift_workout'] })
    lift_workouts.each do |lw|
      reps = rep_counts.find{|r| r['lift_workout'] == lw.id }['reps']
      lw.update(rep_count: reps)
    end

    update_params
  end
end
