class UsersController < ApplicationController

  def show
    @user = current_user
    @email = @user.email
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to edit_user_path, notice: 'Profile was successfully updated 💥'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_photo)
  end

end
