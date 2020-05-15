class LiftWorkoutsController < ApplicationController
  before_action :set_lift_workout, only: [:show, :edit, :update, :destroy]

  # GET /lift_workouts
  def index
    @lift_workouts = LiftWorkout.all
  end

  # GET /lift_workouts/1
  def show
  end

  # GET /lift_workouts/new
  def new
    @lift_workout = LiftWorkout.new
  end

  # GET /lift_workouts/1/edit
  def edit
  end

  # POST /lift_workouts
  def create
    @lift_workout = LiftWorkout.new(lift_workout_params)

    if @lift_workout.save
      redirect_to @lift_workout, notice: 'Lift workout was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lift_workouts/1
  def update
    if @lift_workout.update(lift_workout_params)
      redirect_to @lift_workout, notice: 'Lift workout was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lift_workouts/1
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
