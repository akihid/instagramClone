class PostsController < ApplicationController
  
  before_action :set_post , only:[:edit, :update, :destroy]  

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
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :picture, :picture_cache, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
