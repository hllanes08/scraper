class API::V1::ItemsController < ApplicationController
  before_action :authenticate_with_token!,only:[:index]
  def create
  end

  def update
  end

  def index
  	render json: Item.all
  end
  def show
  end
end
