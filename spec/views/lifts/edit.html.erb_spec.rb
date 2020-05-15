require 'rails_helper'

RSpec.describe "lifts/edit", type: :view do
  before(:each) do
    @lift = assign(:lift, Lift.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit lift form" do
    render

    assert_select "form[action=?][method=?]", lift_path(@lift), "post" do

      assert_select "input[name=?]", "lift[name]"
    end
  end
end
