class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift

  # validate :lift_set_count, :on => :create

  def formatted_weight
    "#{weight}lb" if weight
  end

  # def formatted_reps
  #   lift_sets.pluck(:rep_count).join('/')
  # end
  #
  # def lift_set_list
  #   Array.new(5) { |i| lift_sets[i] }
  # end

  private

  # def lift_set_count
  #   return if photos.blank?
  #   errors.add("Too many photos") if photos.size > 10
  # end
end
