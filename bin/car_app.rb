require 'pry'
require_relative '../lib/car'

focus = TGDApp::Car.new('Ford', 'Focus', 2011)
puts focus.inspect
focus.validate_make

# begin
# bad_car = Car.new('XXXXFord', 'Focus', 2011)
# rescue ValidateMakeError => e 
#   puts e
# end

# begin
# bad_car = Car.new('Ford', 'some whatever', 2011)
# rescue ValidateMakeError => e 
#   puts e
# rescue ValidateModelError => e 
#   puts e
# rescue ValidateYearError => e 
#   puts e
# end


begin
bad_car = TGDApp::Car.new('Ford', 'Focus', 2111)
rescue TGDApp::ValidateMakeError => e 
  puts e
rescue TGDApp::ValidateModelError => e 
  puts e
rescue TGDApp::ValidateYearError => e 
  puts e
end


puts "donezo"