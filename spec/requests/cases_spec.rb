require 'rails_helper'

RSpec.describe "Cases", type: :request do
  describe "GET /cases" do
		before do
			10.times do
				create(:case) 
			end
		end
    it "returns all cases" do
      	get api_v1_cases_path

      	expect(response).to have_http_status(200)
      	expect(JSON.parse(response.body).size).to eq(10)
    end
  end

  describe "GET /top/confirmed?observation_date=2020-04-01&max_results=2" do
  	before do
			10.times do
				create(:case) 
			end
		end
	  it "Return Country by Date" do
	    headers = { "ACCEPT" => "application/json" }
	    get "/api/v1/top/confirmed", :params => { :case => {:observation_date => "2020-04-01", :max_limit => 5} }, :headers => headers

	    expect(response.content_type).to eq("application/json; charset=utf-8")
	   	expect(response).to have_http_status(200)
	  
  		# expect(JSON.parse(response.body)).to have_key(:observation_date) 
	  end

	end

end