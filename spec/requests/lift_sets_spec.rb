require 'rails_helper'

RSpec.describe "LiftSets", type: :request do
  describe "GET /lift_sets" do
    it "works! (now write some real specs)" do
      get lift_sets_path
      expect(response).to have_http_status(200)
    end
  end
end
