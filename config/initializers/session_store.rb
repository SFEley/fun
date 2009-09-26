# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fun_session',
  :secret      => ENV['FUN_SESSION_SECRET'] || '9adba21d0c78b0b4dff06ef2a7096add5e3e67552ed573fde59d95e3c1026cb58e6492d1f08fa6c1bb16a8ae22c00a45f30516d9cd1539f70320c3aba5654bc9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
