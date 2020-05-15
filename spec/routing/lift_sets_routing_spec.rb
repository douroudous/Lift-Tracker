require "rails_helper"

RSpec.describe LiftSetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/lift_sets").to route_to("lift_sets#index")
    end

    it "routes to #new" do
      expect(:get => "/lift_sets/new").to route_to("lift_sets#new")
    end

    it "routes to #show" do
      expect(:get => "/lift_sets/1").to route_to("lift_sets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lift_sets/1/edit").to route_to("lift_sets#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lift_sets").to route_to("lift_sets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lift_sets/1").to route_to("lift_sets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lift_sets/1").to route_to("lift_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lift_sets/1").to route_to("lift_sets#destroy", :id => "1")
    end
  end
end
