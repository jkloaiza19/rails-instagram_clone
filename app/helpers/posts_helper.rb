# It's defining a module called PostsHelper.
module PostsHelper
##
# The function checks if a post has more than one image and returns a boolean value.
# 
# Args:
#   post: The post parameter is an object that represents a post in the application. It likely has
# attributes such as title, content, author, and images. The method is checking if the post has more
# than one image, and if so, it will display carousel controls for the images.
  def display_carousel_controls(post)
    post.images.count > 1
  end

  ##
  # The function returns the time elapsed since a post was created in words.
  # 
  # Args:
  #   post: The "post" parameter is an object that represents a post in a web application. It likely
  # has attributes such as "title", "content", "author", and "created_at" that store information about
  # the post. The "created_at" attribute is a timestamp that indicates when the post was created
  def post_time_ago(post)
    time_ago_in_words(post.created_at)
  end

  ##
  # This Ruby function counts the number of likes on a post and returns a string with the total number
  # of likes.
  # 
  # Args:
  #   post: The "post" parameter is an object that represents a post in a social media platform or any
  # other platform where users can share content and receive likes from other users. The "post" object
  # is expected to have a "likes" attribute that contains a collection of all the likes received by
  # the post.
  # 
  # Returns:
  #   The `post_likes_counter` method returns a string that includes the total number of likes for a
  # given post, using the `pluralize` helper method to correctly pluralize the word "like" based on
  # the number of likes. If the `post` argument is `nil` or if the post has no likes, the method
  # returns `nil`.
  def post_likes_counter(post)
    return unless post&.likes&.count

    total_likes = post&.likes&.count

    return "#{ pluralize(total_likes, 'like') }"
  end

  ##
  # This Ruby function checks if the current user has liked a given post.
  # 
  # Args:
  #   post: The post object that we want to check if the current user has liked or not.
  def user_liked_post?(post)
    !!post.likes.find_by(user: current_user)
  end
end
