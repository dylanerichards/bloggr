class PagesController < ApplicationController
  def home
  end

  def manage
    @posts = Post.all.reverse
  end

  def about
  end
end
