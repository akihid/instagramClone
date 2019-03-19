class UsersController < ApplicationController

  def index
    @Users = User.all
    @user = User.new
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  private

  def set_user_param
    params.require(:user).permit(:name , :email ,:password)
  end



end
