class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :text

  acts_as_votable

  def pretty_created_at
    created_at.to_time.strftime('%B %e at %l:%M %p')
  end

  def singular_or_plural_hearts
    if self.get_upvotes.count == 1
      'heart'
    else
      'hearts'
    end
  end

  def next
    Post.where("id > ?", id).first
  end

  def prev
    Post.where("id < ?", id).last
  end
end
