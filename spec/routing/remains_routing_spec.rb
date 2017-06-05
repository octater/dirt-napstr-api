require "rails_helper"

RSpec.describe RemainsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/remains").to route_to("remains#index")
    end

    it "routes to #new" do
      expect(:get => "/remains/new").to route_to("remains#new")
    end

    it "routes to #show" do
      expect(:get => "/remains/1").to route_to("remains#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/remains/1/edit").to route_to("remains#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/remains").to route_to("remains#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/remains/1").to route_to("remains#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/remains/1").to route_to("remains#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/remains/1").to route_to("remains#destroy", :id => "1")
    end

  end
end
