class WorkoutService
  def self.create_new(params)
    Workout.new(build_params(params))
  end

  def self.update(workout, params)
    workout.update(build_params(params))
  end

  private_class_method def self.build_params(params)
    update_params = params.except(:rep_counts)

    handle_lift_workouts(JSON.parse(params[:rep_counts]))

    update_params
  end

  private_class_method def self.handle_lift_workouts(rep_counts)
    reps = rep_counts.map{ |lw| "(#{lw['lift_workout']}, ARRAY#{lw['reps']})" }
    lw_update_query = "UPDATE lift_workouts SET rep_count = nv.rep_count "\
                      "FROM (VALUES #{reps.join(',')}) AS nv (id, rep_count) "\
                      "WHERE lift_workouts.id = nv.id;"
    ActiveRecord::Base.connection.execute(lw_update_query)
  end
end
