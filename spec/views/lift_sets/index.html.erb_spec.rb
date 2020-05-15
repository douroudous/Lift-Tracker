require 'rails_helper'

RSpec.describe "lift_sets/index", type: :view do
  before(:each) do
    assign(:lift_sets, [
      LiftSet.create!(
        :rep_count => 2,
        :lift_workout => nil
      ),
      LiftSet.create!(
        :rep_count => 2,
        :lift_workout => nil
      )
    ])
  end

  it "renders a list of lift_sets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
