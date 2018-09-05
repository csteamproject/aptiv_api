class SessionsController < ApplicationController
  skip_before_action :require_user

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @user
      token = JWT.encode({user_id: @user.id, authentication_date: Time.now}, Rails.application.credentials.secret_key_base)
      render json: {success: true, token: token}
    else
      render json: {success: false}
    end
  end

  def sessions_type_params
    params.require(:session).permit(:username, :password)
  end
end
