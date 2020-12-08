class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift

  def formatted_weight
    "#{weight}lb" if weight
  end

end
