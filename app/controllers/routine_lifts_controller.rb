class RoutineLiftsController < ApplicationController
  before_action :set_routine_lift, only: [:show, :edit, :update, :destroy]

  def index
    @routine_lifts = RoutineLift.all
  end

  def show
  end

  def new
    @routine_lift = RoutineLift.new
  end

  def edit
  end

  def create
    @routine_lift = RoutineLift.new(routine_lift_params)

    if @routine_lift.save
      redirect_to @routine_lift, notice: 'Routine lift was successfully created.'
    else
      render :new
    end
  end

  def update
    if @routine_lift.update(routine_lift_params)
      redirect_to @routine_lift, notice: 'Routine lift was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @routine_lift.destroy
    redirect_to routine_lifts_url, notice: 'Routine lift was successfully destroyed.'
  end

  private
    def set_routine_lift
      @routine_lift = RoutineLift.find(params[:id])
    end

    def routine_lift_params
      params.require(:routine_lift).permit(:rep_count, :set_count, :routine_id, :lift_id)
    end
end
