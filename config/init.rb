# File: config/init.rb
# Sets up configurations and includes gems, libraries, controllers & models.
# To start the web server, use bin/cilantro.
# 
# To be loaded ONLY by Cilantro.load_environment. These things are already done at this point:
#   + ./lib is included in the ruby load path
#   + rubygems is loaded, but sandboxed to ./gems if ./gems exists
#   + if we're running in server or test mode, sinatra has been loaded


###################
# Section: Options
# Set your Cilantro options here.
Cilantro.auto_reload = true


###################
# Section: Dependencies and Libraries
require 'cilantro/templater'
require 'openssl'
require 'base64'
require 'cgi'
dependency 'json'
dependency 'oauth'


###################
# Section: Database Setup
dependency 'sqlite3', :gem => 'sqlite3-ruby', :env => :development
dependency 'do_sqlite3', :env => :development
dependency 'do_mysql', :env => :production
dependency 'dm-core'
dependency 'data_objects'
dependency 'dm-types'
dependency 'dm-migrations'
# dependency 'dm-validations'

# Uncomment this to fire up a connection to the database using settings from config/database.yml config
# It's configured for DataMapper by default, you can set up your own connection routine here instead.
Cilantro.setup_database

Cilantro.config[:OAuthConsumer] = OAuth::Consumer.new(
  'nH7ue1Ky1XsQHjCzK0Wj',
  'N5pSnQuYpWiCGSGZw4YSprnhxhrfzlkfUA9q89yO',
  {
    :site => 'http://rw.remix.local',
    :request_token_path => '/api/oauth/request_token',
    :authorize_path     => '/api/oauth/authorize',
    :access_token_path  => '/api/oauth/access_token'
  }
)
