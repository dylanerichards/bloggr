class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :text

  def pretty_time
    created_at.to_time.strftime('%B %e at %l:%M %p')
  end

  def next
    where("id > ?", id).first
  end

  def prev
    where("id < ?", id).last
  end
end
