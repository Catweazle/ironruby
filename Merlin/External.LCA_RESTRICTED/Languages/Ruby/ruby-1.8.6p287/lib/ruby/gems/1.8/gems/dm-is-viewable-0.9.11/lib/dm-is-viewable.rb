# Needed to import datamapper and other gems
require 'rubygems'
require 'pathname'

# Add all external dependencies for the plugin here
gem 'dm-core', '~>0.9.11'
require 'dm-core'

# Require plugin-files
require Pathname(__FILE__).dirname.expand_path / 'dm-is-viewable' / 'is' / 'viewable.rb'


# Include the plugin in Resource
module DataMapper
  module Model
    include DataMapper::Is::Viewable
  end # module Model
end # module DataMapper
