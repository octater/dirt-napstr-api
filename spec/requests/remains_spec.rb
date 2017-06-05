require 'rails_helper'

RSpec.describe "Remains", type: :request do
  describe "GET /remains" do
    it "works! (now write some real specs)" do
      get remains_path
      expect(response).to have_http_status(200)
    end
  end
end
