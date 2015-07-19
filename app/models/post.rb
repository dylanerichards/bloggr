class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :text

  acts_as_votable

  include NextPrev
  include Presentation
end
