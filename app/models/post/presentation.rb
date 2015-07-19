module Post::Presentation
  def pretty_created_at
    created_at.to_time.strftime('%B %e at %l:%M %p')
  end


  def heart_count
    "#{self.get_upvotes.count} #{singular_or_plural}"
  end

  private

  def singular_or_plural
    self.get_upvotes.count == 1 ? 'heart' : 'hearts'
  end
end
