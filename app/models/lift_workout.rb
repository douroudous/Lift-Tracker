class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift
  has_many :lift_sets, dependent: :destroy

  accepts_nested_attributes_for :lift_sets, reject_if: :reject_lift_sets

  def formatted_weight
    "#{weight}lb" if weight
  end

  def formatted_reps
    lift_sets.pluck(:rep_count).join('/')
  end

  def reject_lift_sets(attributes)
    attributes['rep_count'].blank?
  end

  private

end
