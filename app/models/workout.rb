class Workout < ApplicationRecord
  belongs_to :routine, optional: true
  has_many :lift_workouts, dependent: :destroy

  accepts_nested_attributes_for :lift_workouts, reject_if: :reject_lift_workouts

  def reject_lift_workouts
    # no lift_sets
  end
end
