require 'rails_helper'

RSpec.describe "lift_workouts/show", type: :view do
  before(:each) do
    @lift_workout = assign(:lift_workout, LiftWorkout.create!(
      :weight => 2,
      :workout => nil,
      :lift => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
