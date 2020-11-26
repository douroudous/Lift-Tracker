class PagesController < ApplicationController
  def home
    @workouts = Workout.order(workout_date: :desc).last(2)
  end
end
