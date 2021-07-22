module StoresHelper

  def edit_comment(comment)
    user = comment.user
    edit_user_comment_path(user, comment)
  end

end
