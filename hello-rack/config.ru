require 'rack'
require 'awesome_print'
require_relative './hello_rack'

run HelloRack.new

# could use the below line instead and app would still work
# run lambda { |env| [200, {'Content-Type'=>'text/plain'}, ["Hello Rack!"]] }
