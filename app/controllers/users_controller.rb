class UsersController < ApplicationController
  def index
    @user = @user.by_location(@user.location_id)
    render json: @user
  end
end
