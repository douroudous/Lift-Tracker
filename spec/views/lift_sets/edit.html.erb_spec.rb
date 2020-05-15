require 'rails_helper'

RSpec.describe "lift_sets/edit", type: :view do
  before(:each) do
    @lift_set = assign(:lift_set, LiftSet.create!(
      :rep_count => 1,
      :lift_workout => nil
    ))
  end

  it "renders the edit lift_set form" do
    render

    assert_select "form[action=?][method=?]", lift_set_path(@lift_set), "post" do

      assert_select "input[name=?]", "lift_set[rep_count]"

      assert_select "input[name=?]", "lift_set[lift_workout_id]"
    end
  end
end
