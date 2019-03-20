class UsersController < ApplicationController

  before_action :set_user , only:[:edit, :update ,:show]
  def index
    @Users = User.all
    @user = User.new
  end
  def new
    if params[:back]
      @user = User.new(user_params)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    @user.icon = "default.png"
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def edit
  end
  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation, :icon, :icon_cache, :content, :gender, :age)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
