class SessionsController < ApplicationController
  skip_before_action :require_user

  def create
    @username = request.headers["username"]
    @password = request.headers["password"]
    # @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    @user = User.find_by(username: @username).try(:authenticate, @password)
    if @user
      token = JWT.encode({user_id: @user.id, authentication_date: Time.now}, Rails.application.credentials.secret_key_base)
      render json: {success: true, token: token, first: @user.first_name, last: @user.last_name, role: Role.find_by(id: @user.role_id).name, id: @user.id, location: @user.location_id}
    else
      render json: {success: false}
    end
  end

  def sessions_type_params
    params.require(:session).permit(:username, :password)
  end
end
