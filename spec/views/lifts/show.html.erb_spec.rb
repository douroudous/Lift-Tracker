require 'rails_helper'

RSpec.describe "lifts/show", type: :view do
  before(:each) do
    @lift = assign(:lift, Lift.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
