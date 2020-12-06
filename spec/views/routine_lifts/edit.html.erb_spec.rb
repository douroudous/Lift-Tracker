require 'rails_helper'

RSpec.describe "routine_lifts/edit", type: :view do
  before(:each) do
    @routine_lift = assign(:routine_lift, RoutineLift.create!(
      :rep_count => 1,
      :set_count => 1,
      :routine => nil,
      :lift => nil
    ))
  end

  it "renders the edit routine_lift form" do
    render

    assert_select "form[action=?][method=?]", routine_lift_path(@routine_lift), "post" do

      assert_select "input[name=?]", "routine_lift[rep_count]"

      assert_select "input[name=?]", "routine_lift[set_count]"

      assert_select "input[name=?]", "routine_lift[routine_id]"

      assert_select "input[name=?]", "routine_lift[lift_id]"
    end
  end
end
