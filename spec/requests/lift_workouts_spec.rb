require 'rails_helper'

RSpec.describe "LiftWorkouts", type: :request do
  describe "GET /lift_workouts" do
    it "works! (now write some real specs)" do
      get lift_workouts_path
      expect(response).to have_http_status(200)
    end
  end
end
