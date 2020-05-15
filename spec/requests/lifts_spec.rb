require 'rails_helper'

RSpec.describe "Lifts", type: :request do
  describe "GET /lifts" do
    it "works! (now write some real specs)" do
      get lifts_path
      expect(response).to have_http_status(200)
    end
  end
end
