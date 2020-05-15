require 'rails_helper'

RSpec.describe "lift_workouts/edit", type: :view do
  before(:each) do
    @lift_workout = assign(:lift_workout, LiftWorkout.create!(
      :weight => 1,
      :workout => nil,
      :lift => nil
    ))
  end

  it "renders the edit lift_workout form" do
    render

    assert_select "form[action=?][method=?]", lift_workout_path(@lift_workout), "post" do

      assert_select "input[name=?]", "lift_workout[weight]"

      assert_select "input[name=?]", "lift_workout[workout_id]"

      assert_select "input[name=?]", "lift_workout[lift_id]"
    end
  end
end
