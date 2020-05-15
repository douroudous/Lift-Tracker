require 'rails_helper'

RSpec.describe "lifts/index", type: :view do
  before(:each) do
    assign(:lifts, [
      Lift.create!(
        :name => "Name"
      ),
      Lift.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of lifts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
