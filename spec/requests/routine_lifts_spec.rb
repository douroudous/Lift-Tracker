require 'rails_helper'

RSpec.describe "RoutineLifts", type: :request do
  describe "GET /routine_lifts" do
    it "works! (now write some real specs)" do
      get routine_lifts_path
      expect(response).to have_http_status(200)
    end
  end
end
