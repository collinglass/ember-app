class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(params[:user])
      render json: user
    else
      render json: user, status: 422
    end
  end

end
