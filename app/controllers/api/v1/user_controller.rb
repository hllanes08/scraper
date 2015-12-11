class API::V1::UserController < API::V1::BaseController
  def index
     users = User.all
     respond_to do |format|
    	format.json {render :json => users}
     end
  end
  def show
     user= User.find(params[:id])
     respond_to do |format|
	 format.json {render :json => user}
     end
  end
end
