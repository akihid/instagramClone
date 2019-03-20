module PostsHelper
  def chose_new_or_edit
    if action_name == 'new' or  action_name == 'confirm'
      confirm_posts_path
    else
      post_path
    end
  end

end
