class PostsController < ApplicationController

  before_action :set_post , only:[:edit, :update, :show, :destroy ,:check_user]
  before_action :check_user, only:[:edit, :update, :destroy]

  def index
    @posts = Post.all.order("updated_at DESC")
  end

  def new
    if params[:back]
      @post = Post.new(post_params)
    else
      @post = Post.new
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      flash[:success] = "新規投稿しました。"
      # PostMailer.post_mail(@post).deliver 
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def confirm
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    render 'new' if @post.invalid?
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:info] = "投稿の編集をしました。"
      # PostMailer.post_mail(@post).deliver 
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @post.destroy
    flash[:danger] = "投稿を削除しました。"
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :picture, :picture_cache, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def check_user
    redirect_to posts_path if current_user.id !=  @post.user_id
  end
end
