class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :text

  acts_as_votable

  def pretty_created_at
    created_at.to_time.strftime('%B %e at %l:%M %p')
  end


  def heart_count
    "#{self.get_upvotes.count} #{singular_or_plural}"
  end

  def next
    Post.where("id > ?", id).first
  end

  def prev
    Post.where("id < ?", id).last
  end

  private

  def singular_or_plural
    self.get_upvotes.count == 1 ? 'heart' : 'hearts'
  end
end
