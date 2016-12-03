require "observer"


class Feed

  include Observable

  def add_subscriber(user)
    add_observer(user)
  end

  def initialize
    @messages = Array.new
  end

  def add_post(post)
    changed
    notify_observers(post)
  end

end
