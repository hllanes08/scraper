class API::V1::PeopleController < ApplicationController
  def index
     @people=[{first_name:"Harvin",last_name: "LLanes"}]
     respond_to do |format|
       format.json {render :json => @people }
     end
  end
end
