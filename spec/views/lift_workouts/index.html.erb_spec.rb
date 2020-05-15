require 'rails_helper'

RSpec.describe "lift_workouts/index", type: :view do
  before(:each) do
    assign(:lift_workouts, [
      LiftWorkout.create!(
        :weight => 2,
        :workout => nil,
        :lift => nil
      ),
      LiftWorkout.create!(
        :weight => 2,
        :workout => nil,
        :lift => nil
      )
    ])
  end

  it "renders a list of lift_workouts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
