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
    @workout = Workout.new
    build_workout_sets
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
        lift_workouts: [
          :lift,
          :lift_sets
        ]
      ).find(params[:id])
    end

    def build_workout_sets
      # NEXT: fix this!!!

      1.times do
        @workout.lift_workouts.build(lift: Lift.last).lift_sets.build
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
