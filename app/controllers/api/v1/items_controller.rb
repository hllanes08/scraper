class API::V1::ItemsController < ApplicationController
  before_action :authenticate_with_token!,only:[:index]
  def create
    item=Item.new(item_params)
    if item.save
   	render json: item,status: 201
    else
	render json: {errors: user.errors},status:422
    end
  end

  def update
  end

  def index
  	render json: Item.all
  end
  def show
  end
  private
  def item_params
    params.require(:item).permit(:name,:item_type,)    
  end
end
