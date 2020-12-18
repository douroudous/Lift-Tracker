require 'rails_helper'

RSpec.describe "lift_sets/new", type: :view do
  before(:each) do
    assign(:lift_set, LiftSet.new(
      :rep_count => 1,
      :lift_workout => nil
    ))
  end

  it "renders new lift_set form" do
    render

    assert_select "form[action=?][method=?]", lift_sets_path, "post" do

      assert_select "input[name=?]", "lift_set[rep_count]"

      assert_select "input[name=?]", "lift_set[lift_workout_id]"
    end
  end
end
