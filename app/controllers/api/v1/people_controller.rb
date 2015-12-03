class API::V1::PeopleController < API::V1::BaseController
  def index
     @people=[{first_name:"Harvin",last_name: "LLanes"}]
     respond_to do |format|
       format.json {render :json => @people }
     end
  end
end
