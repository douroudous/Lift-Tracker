class LiftWorkoutsController < ApplicationController
  before_action :set_lift_workout, only: [:show, :edit, :update, :destroy]

  def index
    @lift_workouts = LiftWorkout.all
  end

  def new
    @lift_workout = LiftWorkout.new
  end

  def edit
  end

  def create
    @lift_workout = LiftWorkout.new(lift_workout_params)

    if @lift_workout.save
      redirect_to @lift_workout, notice: 'Lift workout was successfully created.'
    else
      render :new
    end
  end

  def update
    if @lift_workout.update(lift_workout_params)
      redirect_to @lift_workout, notice: 'Lift workout was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lift_workout.destroy
    redirect_to lift_workouts_url, notice: 'Lift workout was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lift_workout
      @lift_workout = LiftWorkout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lift_workout_params
      params.require(:lift_workout).permit(:weight, :workout_id, :lift_id)
    end
end
