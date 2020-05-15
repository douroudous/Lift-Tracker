require 'rails_helper'

RSpec.describe "lifts/new", type: :view do
  before(:each) do
    assign(:lift, Lift.new(
      :name => "MyString"
    ))
  end

  it "renders new lift form" do
    render

    assert_select "form[action=?][method=?]", lifts_path, "post" do

      assert_select "input[name=?]", "lift[name]"
    end
  end
end
