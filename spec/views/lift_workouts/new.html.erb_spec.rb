require 'rails_helper'

RSpec.describe "lift_workouts/new", type: :view do
  before(:each) do
    assign(:lift_workout, LiftWorkout.new(
      :weight => 1,
      :workout => nil,
      :lift => nil
    ))
  end

  it "renders new lift_workout form" do
    render

    assert_select "form[action=?][method=?]", lift_workouts_path, "post" do

      assert_select "input[name=?]", "lift_workout[weight]"

      assert_select "input[name=?]", "lift_workout[workout_id]"

      assert_select "input[name=?]", "lift_workout[lift_id]"
    end
  end
end
