# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lunch-time_session',
  :secret      => '48d5974b8cf4d898e490ece4e07346fe4c378a989cb60cf417b057dd262db06878526042d4de5af752a621a1134eb812a69bbc6de8b69bc9b317ab77b271db00'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
