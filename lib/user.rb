class User

  def initialize(username)
    @username = username
  end

  def subscribe_to_feed(feed)
    @feed = feed
    @feed.add_subscriber(self)
  end

  def create_post(message)
    post = Post.new(message)
    @feed.add_post(post)
  end

  def update(post)
    puts "message received by " + @username + ": " + post.message
  end

end
