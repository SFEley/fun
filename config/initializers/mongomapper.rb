require 'mongomapper'

# Different databases by environment
MongoMapper.database = "fun_#{ENV['RAILS_ENV']}"
