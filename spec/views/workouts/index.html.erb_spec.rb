require 'rails_helper'

RSpec.describe "workouts/index", type: :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(
        :body_weight => 2
      ),
      Workout.create!(
        :body_weight => 2
      )
    ])
  end

  it "renders a list of workouts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
