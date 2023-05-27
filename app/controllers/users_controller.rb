class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle successful user registration
      redirect_to root_url, notice: 'User registered successfully!'
    else
      # Handle failed user registration
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
