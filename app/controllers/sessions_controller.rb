class SessionsController < ApplicationController
  def new
    if logged_in?
      # redirect_to 投稿一覧へ
    end
  end

  def create
    @user = User.find_by(email:params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to users_path
      # マイページへ
    else
      flash[:danger] = 'ログイン失敗'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウト'
    redirect_to new_session_path
  end
end
