require 'rails_helper'

RSpec.describe Api::V1::CasesController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "JSON body response contains expected case attributes" do
      body = JSON.parse(response.body)
      expect(body[0]['observation_date'].to_s).to be_present
      expect(body[0]['country'].to_s).to be_present
      expect(body[0]['confirmed'].to_s).to be_present
      expect(body[0]['deaths'].to_s).to be_present
      expect(body[0]['recovered'].to_s).to be_present
    end
  end
  describe "GET #top/confirmed" do
  	 before do
      get :top
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end