require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Post do
  before(:each) do
    @post = Post.new
  end
  
  it "can have a title" do
    @post.title = "Test title"
    @post.save.should be_true
  end
  
  it "can have a message" do
    @post.message = "This is a test message."
    @post.save.should be_true
  end

end