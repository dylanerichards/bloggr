require 'rails_helper'

describe Post do
  it { should respond_to :title }
  it { should respond_to :text }

  it { should validate_presence_of :title }
  it { should validate_presence_of :text }
end
