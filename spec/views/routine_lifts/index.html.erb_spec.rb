require 'rails_helper'

RSpec.describe "routine_lifts/index", type: :view do
  before(:each) do
    assign(:routine_lifts, [
      RoutineLift.create!(
        :rep_count => 2,
        :set_count => 3,
        :routine => nil,
        :lift => nil
      ),
      RoutineLift.create!(
        :rep_count => 2,
        :set_count => 3,
        :routine => nil,
        :lift => nil
      )
    ])
  end

  it "renders a list of routine_lifts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
