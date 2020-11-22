class UsersController < ApplicationController
  before_action :find_user
  def show; end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :img_url)
  end
end
