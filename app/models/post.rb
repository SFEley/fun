class Post
  include MongoMapper::Document
  
  key :content, :required => true
  timestamps!
  
  # Imports a text file _if_ it didn't already exist. The filename should be a Ruby-parsable timestamp.
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
  
  # Converts Markdown content to HTML, using the RDiscount processor.
  def to_html
    rd = RDiscount.new(content, :smart)
    rd.to_html
  end
end