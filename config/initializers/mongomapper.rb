require 'mongomapper'

# Different databases by environment
# We're using environment variables here to be friendly for Heroku hosting
MongoMapper.connection = Mongo::Connection.new(ENV['FUN_MONGO_HOST']) if ENV['FUN_MONGO_HOST']
MongoMapper.database = "fun_#{ENV['RAILS_ENV']}"

if ENV['FUN_MONGO_USER'] && ENV['FUN_MONGO_PASS']
  MongoMapper.database.authenticate(ENV['FUN_MONGO_USER'], ENV['FUN_MONGO_PASS'])
end