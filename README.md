# testrail-ruby
Ruby bindings and idiomatic interface for testrail v2 API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'testrail-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install testrail-ruby

## Usage


``` ruby
#require_relative '../testrail-ruby/lib/testrail/testrail-ruby'
require 'testrail-ruby'

client = TestRail::APIClient.new('https://YourTestrailURL')
client.user = 'YourUserName'
client.password = 'YourPassword'

puts client.get_projects
puts client.get_project(1)
client.get_tests(1)
puts client.get_test("1")

```

# Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/testrail-ruby.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
