require "rails_helper"

RSpec.describe EasesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/eases").to route_to("eases#index")
    end

    it "routes to #new" do
      expect(:get => "/eases/new").to route_to("eases#new")
    end

    it "routes to #show" do
      expect(:get => "/eases/1").to route_to("eases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eases/1/edit").to route_to("eases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/eases").to route_to("eases#create")
    end

    it "routes to #update" do
      expect(:put => "/eases/1").to route_to("eases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eases/1").to route_to("eases#destroy", :id => "1")
    end

  end
end
