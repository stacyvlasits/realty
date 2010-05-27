# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_realty_session',
  :secret      => '7d918c913f8fad63b148b48394376991496f724dc4ed3d5a277b970afca7e9cfbbfb5417677860a303f4cfcc817b66d23dd247af37121a3af1b141906daf7918'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
