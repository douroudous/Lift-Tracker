class LiftSet < ApplicationRecord
  belongs_to :lift_workout
  validates_associated :lift_workout
end
