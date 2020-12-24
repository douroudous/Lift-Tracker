class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.includes(
      lift_workouts: [
        :lift,
        :lift_sets
      ]
    ).order(workout_date: :desc)
  end

  def show
  end

  def new
    @workout = Workout.new(routine_id: params[:routine])
    build_workout_sets
  end

  def edit
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to workouts_url
    else
      render :new
    end
  end

  def update
    if @workout.update(workout_params)
      redirect_to edit_workout_url
    else
      render :edit
    end
  end

  def destroy
    @workout.destroy
    redirect_to workouts_url, notice: 'Workout was successfully destroyed.'
  end

  private
    def set_workout
      @workout = Workout.includes(
        lift_workouts: [
          :lift,
          :lift_sets
        ]
      ).order('lift_sets.created_at').find(params[:id])
    end

    def build_workout_sets
      @routine = @workout.routine
      @routine&.routine_lifts&.each do |routine_lift|
        lift_workout = @workout.lift_workouts.build(
          lift_id: routine_lift.lift_id,
          rep_count: routine_lift.rep_count
        )
        routine_lift.set_count.times { lift_workout.lift_sets.build }
      end
    end

    def workout_params
      params.require(:workout).permit(
        :body_weight,
        :rep_counts,
        :workout_date,
        :lift_workouts_attributes => [
          :id,
          :weight,
          :rep_count,
          :lift_id,
          :lift_sets_attributes => [
            :id,
            :rep_count
          ]
        ]
      )
    end
end
