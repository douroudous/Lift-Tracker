require "rails_helper"

RSpec.describe RoutineLiftsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/routine_lifts").to route_to("routine_lifts#index")
    end

    it "routes to #new" do
      expect(:get => "/routine_lifts/new").to route_to("routine_lifts#new")
    end

    it "routes to #show" do
      expect(:get => "/routine_lifts/1").to route_to("routine_lifts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/routine_lifts/1/edit").to route_to("routine_lifts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/routine_lifts").to route_to("routine_lifts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/routine_lifts/1").to route_to("routine_lifts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/routine_lifts/1").to route_to("routine_lifts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/routine_lifts/1").to route_to("routine_lifts#destroy", :id => "1")
    end
  end
end
