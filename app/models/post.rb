class Post
  include MongoMapper::Document
  
  key :content, :required => true
  timestamps!
  
  def self.import(source)
    if File.exists?(source)
      timestamp = File.basename(source, '.*').to_time
      find_by_created_at(timestamp) or begin
        p = create(:content => File.read(source))
        p.update_attributes(:created_at => timestamp) # Must override after save
        p
      end
    end
  end
end