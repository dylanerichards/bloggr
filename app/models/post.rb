class Post < ActiveRecord::Base
  def pretty_time
    created_at.to_time.strftime('%B %e at %l:%M %p')
  end
end
