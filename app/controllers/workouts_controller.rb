class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.order(workout_date: :desc)
  end

  def show
  end

  def new
    @workout = Workout.new
  end

  def edit
  end

  def create
    @workout = WorkoutService.create_new(workout_params)

    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created.'
    else
      render :new
    end
  end

  def update
    updated = WorkoutService.update(@workout, workout_params)

    if updated
      redirect_to @workout, notice: 'Workout was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @workout.destroy
    redirect_to workouts_url, notice: 'Workout was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:body_weight)
    end
end
