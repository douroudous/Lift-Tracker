require 'rails_helper'

RSpec.describe "routines/index", type: :view do
  before(:each) do
    assign(:routines, [
      Routine.create!(
        :name => "Name"
      ),
      Routine.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of routines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
