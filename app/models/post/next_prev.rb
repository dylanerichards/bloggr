module Post::NextPrev
  def next
    Post.where("id > ?", id).first
  end

  def prev
    Post.where("id < ?", id).last
  end
end
