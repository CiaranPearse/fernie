require 'rails_helper'

RSpec.describe "Eases", :type => :request do
  describe "GET /eases" do
    it "works! (now write some real specs)" do
      get eases_path
      expect(response).to have_http_status(200)
    end
  end
end
