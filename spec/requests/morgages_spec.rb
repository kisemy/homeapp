require 'rails_helper'

RSpec.describe "Morgages", :type => :request do
  describe "GET /morgages" do
    it "works! (now write some real specs)" do
      get morgages_path
      expect(response).to have_http_status(200)
    end
  end
end
