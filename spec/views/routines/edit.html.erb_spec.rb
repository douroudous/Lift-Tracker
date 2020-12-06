require 'rails_helper'

RSpec.describe "routines/edit", type: :view do
  before(:each) do
    @routine = assign(:routine, Routine.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit routine form" do
    render

    assert_select "form[action=?][method=?]", routine_path(@routine), "post" do

      assert_select "input[name=?]", "routine[name]"
    end
  end
end
