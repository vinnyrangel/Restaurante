# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurante_session',
  :secret      => '59cd376e12b6942c739c411059495b3254cdd9254d25958dfddac7fbdf6b4f0fd066cfb2a5b28e1657190c5d1969f5d447579f3d18b3c8cf7c701ced6308942d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
