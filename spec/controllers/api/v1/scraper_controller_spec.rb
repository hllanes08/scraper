require 'rails_helper'

RSpec.describe API::V1::ScraperController, type: :controller do
	describe 'POST #create' do
	    context "on succesfull save new page" do
	       	before do
		    post :create, format: :json, scraper: {url: "https://www.theguardian.com/international" } 
		end
		it "creates a new page" do 
		    expect(Page.last.name).to eq("News, sport and opinion from the Guardian's global edition | The Guardian") 
	    	end
	    end
	end
	
	describe "GET #index" do
	    before do
	        get :index, format: :json
		expect(response).to be_success
	    end

	    context "all pages" do
		it "returns all pages" do	
		    post :create, format: :json, scraper: {url: "https://www.theguardian.com/international" } 
		    get :index, format: :json
		    parsed_response = JSON.parse(response.body)
		    expect(parsed_response['scraper'].length).to eq(1)
		end
	    end 
	end 
end
