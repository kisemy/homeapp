require 'rails_helper'

RSpec.describe "Mgloans", :type => :request do
  describe "GET /mgloans" do
    it "works! (now write some real specs)" do
      get mgloans_path
      expect(response).to have_http_status(200)
    end
  end
end
