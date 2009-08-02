# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fun_session',
  :secret      => 'f91fba54d5ea6efd9d19bc86fa27f03bb4cf9d0ea63d90177a3151253b3f62248d2476330ccdcc9269a4d29340d235863dcc1e05125dc8ee9977567a20215244'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
