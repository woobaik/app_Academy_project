class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:username, :password_digest)
  end
end
