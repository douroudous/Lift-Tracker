class PagesController < ApplicationController
  def home
    @workouts = Workout.order(workout_date: :desc).first(2)
  end
end
