class ApplicationController < ActionController::API
  before_action :require_user

  def current_user
    @user
  end

  def require_user
    token = request.headers['jwt-token']
    hash = JWT.decode(token,  Rails.application.credentials.secret_key_base)[0] rescue nil
    if hash && is_valid(hash)
      @user = User.find hash["user_id"]
      render status: :unauthorized unless @user
    else
      render status: :unauthorized
    end
  end

  def is_valid(hash)
    puts hash.inspect
    hash["authentication_date"] > 3.days.ago
  end

end
