class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.includes(
      lift_workouts: :lift
    ).order(workout_date: :desc)
  end

  def show
  end

  def new
    @workout = Workout.new
    @workout.lift_workouts.build.lift_sets.build
  end

  def edit
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created.'
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
        lift_workouts: [:lift, :lift_sets]
      ).find(params[:id])
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
          :lift_sets_attributes => [
            :id,
            :rep_count
          ]
        ]
      )
    end
end
