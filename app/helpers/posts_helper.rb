# It's defining a module called PostsHelper.
module PostsHelper
  def display_carousel_controls(post)
    post.images.count > 1
  end

  def post_time_ago(post)
    time_ago_in_words(post.created_at)
  end
end
