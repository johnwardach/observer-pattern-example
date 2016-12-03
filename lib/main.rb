require_relative 'feed'
require_relative 'user'
require_relative 'post'

feed = Feed.new
user1 = User.new("John Doe")
user2 = User.new("Jane Doe")
user1.subscribe_to_feed(feed)
user2.subscribe_to_feed(feed)
user2.create_post("hi")
