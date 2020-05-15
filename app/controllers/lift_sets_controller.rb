class LiftSetsController < ApplicationController
  before_action :set_lift_set, only: [:show, :edit, :update, :destroy]

  # GET /lift_sets
  def index
    @lift_sets = LiftSet.all
  end

  # GET /lift_sets/1
  def show
  end

  # GET /lift_sets/new
  def new
    @lift_set = LiftSet.new
  end

  # GET /lift_sets/1/edit
  def edit
  end

  # POST /lift_sets
  def create
    @lift_set = LiftSet.new(lift_set_params)

    if @lift_set.save
      redirect_to @lift_set, notice: 'Lift set was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lift_sets/1
  def update
    if @lift_set.update(lift_set_params)
      redirect_to @lift_set, notice: 'Lift set was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lift_sets/1
  def destroy
    @lift_set.destroy
    redirect_to lift_sets_url, notice: 'Lift set was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lift_set
      @lift_set = LiftSet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lift_set_params
      params.require(:lift_set).permit(:rep_count, :lift_workout_id)
    end
end
