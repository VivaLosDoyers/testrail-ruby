#require_relative '../testrail-ruby-v2/testrail'
require 'testrail-ruby-v2'

client = TestRail::APIClient.new('https://YourTestrailURL')
client.user = 'YourUserName'
client.password = 'YourPassword'

puts client.get_projects
puts client.get_project(1)
client.get_tests(1)
puts client.get_test("1")
