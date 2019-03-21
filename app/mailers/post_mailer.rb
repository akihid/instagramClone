class PostMailer < ApplicationMailer
  def post_mail(post)
    @post = post

    mail to: @post.user.email, subject: "投稿完了の確認メール"
   end
end
