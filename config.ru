# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require 'sprockets'
#run Licenta::Application

environment = Sprockets::Environment.new
environment.append_path 'app/assets/javascripts'
environment.append_path 'lib/assets/javascripts'
environment.append_path 'vendor/assets/jquery'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'app/assets/javascripts'
  environment.append_path 'app/assets/stylesheets'
  run environment
end

map '/' do
  run Licenta::Application
end