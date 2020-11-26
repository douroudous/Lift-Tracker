class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift

  has_many :lift_sets
  validate :lift_set_count, :on => :create

  def formatted_weight
    "#{weight}lb" if weight
  end

  def formatted_reps
    lift_sets.pluck(:rep_count).join('/')
  end

  private

  def lift_set_count
    return if photos.blank?
    errors.add("Too many photos") if photos.size > 10
  end
end
