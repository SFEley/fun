require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Post do
  describe "importing" do
    before(:each) do
      @files = Dir.glob(File.join(RAILS_ROOT, 'doc', 'diary', '*.markdown'))
    end
    
    it "can import a single text file" do
      p = Post.import(@files.first)
      p.content.should =~ /Have a practical MongoDB project/
    end
  end
    
end