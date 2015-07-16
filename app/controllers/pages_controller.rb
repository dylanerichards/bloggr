class PagesController < ApplicationController
  def home
  end

  def manage
    @posts = Post.all
  end

  def about
  end
end
