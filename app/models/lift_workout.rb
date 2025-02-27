class LiftWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :lift
  has_many :lift_sets, dependent: :destroy

  accepts_nested_attributes_for :lift_sets

  def formatted_weight
    "#{weight}lb" if weight
  end

  def formatted_reps
    lift_sets.map{|ls| ls.rep_count || '-' }.join('/')
  end

  private

end
