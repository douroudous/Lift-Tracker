class LiftSetsController < ApplicationController
  before_action :set_lift_set, only: [:show, :edit, :update, :destroy]

  def index
    @lift_sets = LiftSet.all
  end

  def show
  end

  def new
    @lift_set = LiftSet.new
  end

  def edit
  end

  def create
    @lift_set = LiftSet.new(lift_set_params)

    if @lift_set.save
      redirect_to @lift_set, notice: 'Lift set was successfully created.'
    else
      render :new
    end
  end

  def update
    if @lift_set.update(lift_set_params)
      redirect_to @lift_set, notice: 'Lift set was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lift_set.destroy
    redirect_to lift_sets_url, notice: 'Lift set was successfully destroyed.'
  end

  private
    def set_lift_set
      @lift_set = LiftSet.find(params[:id])
    end

    def lift_set_params
      params.require(:lift_set).permit(:rep_count, :lift_workout_id)
    end
end
