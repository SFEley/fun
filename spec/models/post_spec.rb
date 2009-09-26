require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Post do
  it "has content" do
    p = Post.new(content: "Hi there!")
    p.content.should == "Hi there!"
  end
  
  it "requires content" do
    p = Post.new(content: nil)
    p.should_not be_valid
  end
  
  it "knows when it was created" do
    p = Post.create(content: "Foo")
    p.created_at.to_i.should be_close(Time.now.to_i, 2)
  end
  
  describe "importing" do
    before(:each) do
      @files = Dir.glob(File.join(RAILS_ROOT, 'doc', 'diary', '*.markdown'))
    end
    
    it "can import a single text file" do
      p = Post.import(@files.first)
      p.content.should =~ /Have a practical MongoDB project/
    end
    
    it "doesn't import the same file twice" do
      p = Post.import(@files.first)
      p2 = Post.import(@files.first)
      Post.count.should == 1
    end
  end
  
  it "can format Markdown content to HTML" do
    p = Post.new(content: "This is some _formatted_ text.")
    p.to_html.should =~ /This is some <em>formatted<\/em> text/
  end
end