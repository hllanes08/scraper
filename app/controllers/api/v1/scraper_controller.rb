class API::V1::ScraperController < ApplicationController
    def create
        page = Page.new(scraper_params)
	if page.scraper
	    render json: page ,status: 201
	else
	    render json: {errors: page.errors}, status: 402
	end		
    end
    
    def index
	render json: {Pages: Page.all}
    end
    private

    def scraper_params
   	params.require(:scraper).permit(:url)
    end
end
