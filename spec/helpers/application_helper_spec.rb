require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationHelper do
  describe "Google Analytics" do
    describe "loading" do
      it "returns the script code when the FUN_GOOGLE_ANALYTICS environment variable is set" do
        ENV["FUN_GOOGLE_ANALYTICS"] = "testtest"
        helper.analytics_load.should =~ /var gaJsHost/
      end
      
      it "returns nothing when the FUN_GOOGLE_ANALYTICS environment variable is not set" do
        ENV["FUN_GOOGLE_ANALYTICS"] = nil
        helper.analytics_load.should be_nil
      end
    end

    describe "tracking" do
      it "returns the script code when the FUN_GOOGLE_ANALYTICS environment variable is set" do
        ENV["FUN_GOOGLE_ANALYTICS"] = "testtest"
        helper.analytics_track.should =~ /_gat\._getTracker\("testtest"\)/
      end
      
      it "returns nothing when the FUN_GOOGLE_ANALYTICS environment variable is not set" do
        ENV["FUN_GOOGLE_ANALYTICS"] = nil
        helper.analytics_track.should be_nil
      end
    end
    
  end
end