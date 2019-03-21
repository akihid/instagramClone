class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(post_id:params[:post_id])
    redirect_back(fallback_location: request.url)
    flash[:success] = "#{favorite.post.user.name}さんの投稿をお気に入り登録しました。"
  end

  def destroy
    favorite = current_user.favorites.find_by(id:params[:id]).destroy
    redirect_back(fallback_location: request.url)
    flash[:warning] = "#{favorite.post.user.name}さんの投稿をお気に入り解除しました。"
  end

  def index
    @posts = current_user.favotite_posts
  end
end
