class Workout < ApplicationRecord
  belongs_to :routine, optional: true
  has_many :lift_workouts, dependent: :destroy

  accepts_nested_attributes_for :lift_workouts

  validates_associated :lift_workouts

  def rep_count_input
    rep_array = lift_workouts.map do |lw|
      { :lift_workout => lw.id, :reps => lw.rep_count.map(&:to_i) }
    end
    rep_array.to_json
  end
end
