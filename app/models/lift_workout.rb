class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift
  has_many :lift_sets
end
