class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift

  def formatted_weight
    "#{weight}lb" if weight
  end

  def formatted_reps
    rep_count.join('/')
  end

  def sized_list(size)
    # MOVE THIS OVER TO WORKOUT CONTROLLER LOGIC
    Array.new(size) { |i| rep_count[i] }
  end

  private

end
