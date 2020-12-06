class Routine < ApplicationRecord
  has_many :routine_lifts
  has_many :workouts
end
