class API::V1::UsersController < API::V1::BaseController
  before_action :authenticate_with_token!, only: [:index,:show,:update, :destroy]
  respond_to :json
  def index
     render json: User.all
  end
  def show
    user = User.find(params[:id])
    respond_with API::V1::UserSerializer.new(user).to_json
  end
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201#,location: [:api,user]
    else
      render json: {errors: user.errors },status:422
    end
  end
  def update
      user = current_user

      if user.update(user_params)
        render json: user, status: 200#, location: [:api, user]
      else
        render json: { errors: user.errors }, status: 422
      end
    end
  private
   def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
   end
end
