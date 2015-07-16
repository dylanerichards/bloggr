require 'rails_helper'

RSpec.describe Post, :type => :model do
  it { should respond_to :title }
  it { should respond_to :text }

  it { should validate_presence_of  :title }
  it { should validate_presence_of  :text }

  describe "#next" do
    it 'finds the next post' do
      post1 = Post.create(title: "post1", text: "post1")
      post2 = Post.create(title: "post2", text: "post2")

      expect(post1.next).to eq post2
    end
  end

  describe "#prev" do
    it 'finds the next post' do
      post1 = Post.create(title: "post1", text: "post1")
      post2 = Post.create(title: "post2", text: "post2")

      expect(post2.prev).to eq post1
    end
  end
end
