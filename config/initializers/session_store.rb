# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Kontakt_session',
  :secret      => 'fa7f1849bb79e2ea4e4d213538add7203cd9e935987796ca663cbc405fe1943c37e33e94107509fd739a9a59bec1b155ab6c38e6f16b422d7f8b0e89f989a359'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
