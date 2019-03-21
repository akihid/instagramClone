class UsersController < ApplicationController

  before_action :set_user , only:[:edit, :update ,:show ,:check_user]
  before_action :check_user , only:[:edit, :update]

  def new
    if logged_in?
      redirect_to posts_path
    elsif params[:back]
      @user = User.new(user_params)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = '会員登録しました'
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
  end
  def update
    if @user.update(user_params)
      flash[:info] = 'プロフィールを更新しました'
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

  def check_user
    redirect_to edit_user_path(current_user.id) if current_user.id !=  @user.id
  end

end
