class LiftsController < ApplicationController
  before_action :set_lift, only: [:show, :edit, :update, :destroy]

  # GET /lifts
  def index
    @lifts = Lift.all
  end

  # GET /lifts/1
  def show
  end

  # GET /lifts/new
  def new
    @lift = Lift.new
  end

  # GET /lifts/1/edit
  def edit
  end

  # POST /lifts
  def create
    @lift = Lift.new(lift_params)

    if @lift.save
      redirect_to @lift, notice: 'Lift was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lifts/1
  def update
    if @lift.update(lift_params)
      redirect_to @lift, notice: 'Lift was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lifts/1
  def destroy
    @lift.destroy
    redirect_to lifts_url, notice: 'Lift was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lift
      @lift = Lift.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lift_params
      params.require(:lift).permit(:name)
    end
end
