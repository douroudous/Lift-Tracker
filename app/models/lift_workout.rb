class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift

  def formatted_weight
    "#{weight}lb" if weight
  end

  def formatted_reps
    rep_count.join('/')
  end

  private

end
