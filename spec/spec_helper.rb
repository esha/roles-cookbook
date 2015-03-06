require 'chefspec'
require 'chefspec/berkshelf'
require 'codeclimate-test-reporter'

CodeClimate::TestReporter.start

begin
  require 'coveralls'
  Coveralls.wear!
rescue LoadError
  puts '>>>>> Not reporting to Coveralls because gem not loaded.'
end
