class UsersController < ApplicationController

  def index
    @Users = User.all
    @user = User.new
  end
  def new
    if params[:back]
      @user = User.new(set_user_param)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(set_user_param)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  private

  def set_user_param
    params.require(:user).permit(:name , :email ,:password ,:password_confirmation)
  end



end
