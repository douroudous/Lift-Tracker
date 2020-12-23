class Workout < ApplicationRecord
  belongs_to :routine, optional: true
  has_many :lift_workouts, dependent: :destroy

  accepts_nested_attributes_for :lift_workouts
end
