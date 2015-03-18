class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if !@user.is_email?
      flash[:alert] = "Input a properly formatted email."
      redirect_to :back
    elsif @user.save
      flash[:notice]= "Welcome to the site!"
      redirect_to '/'
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
