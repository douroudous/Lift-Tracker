require "rails_helper"

RSpec.describe LiftWorkoutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/lift_workouts").to route_to("lift_workouts#index")
    end

    it "routes to #new" do
      expect(:get => "/lift_workouts/new").to route_to("lift_workouts#new")
    end

    it "routes to #show" do
      expect(:get => "/lift_workouts/1").to route_to("lift_workouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lift_workouts/1/edit").to route_to("lift_workouts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lift_workouts").to route_to("lift_workouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lift_workouts/1").to route_to("lift_workouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lift_workouts/1").to route_to("lift_workouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lift_workouts/1").to route_to("lift_workouts#destroy", :id => "1")
    end
  end
end
