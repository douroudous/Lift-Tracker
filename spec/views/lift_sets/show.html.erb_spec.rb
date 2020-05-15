require 'rails_helper'

RSpec.describe "lift_sets/show", type: :view do
  before(:each) do
    @lift_set = assign(:lift_set, LiftSet.create!(
      :rep_count => 2,
      :lift_workout => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
