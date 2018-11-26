class UsersController < ApplicationController
  def index
    if current_user.role_id == 4
      @user = User.all
    else
      @user = @user.by_location(@user.location_id)
    end
    render json: @user
  end

  # POST /items
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @user.update(item_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @user.destroy
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :location_id, :role_id, :password)
  end

end
