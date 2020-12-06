class LiftsController < ApplicationController
  before_action :set_lift, only: [:show, :edit, :update, :destroy]

  def index
    @lifts = Lift.all
  end

  def show
  end

  def new
    @lift = Lift.new
  end

  def edit
  end

  def create
    @lift = Lift.new(lift_params)

    if @lift.save
      redirect_to @lift, notice: 'Lift was successfully created.'
    else
      render :new
    end
  end

  def update
    if @lift.update(lift_params)
      redirect_to @lift, notice: 'Lift was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lift.destroy
    redirect_to lifts_url, notice: 'Lift was successfully destroyed.'
  end

  private
    def set_lift
      @lift = Lift.find(params[:id])
    end

    def lift_params
      params.require(:lift).permit(:name)
    end
end
