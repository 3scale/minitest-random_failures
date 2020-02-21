# Minitest::RandomFailures

This is a plugin to Minitest that may help you find cross dependent tests
Those tests are likely to lead to random failures when your run you test suites
with `:random` option.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'minitest-random_failures'
end
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install minitest-random_failures

## Usage

When running your test, just add option `--save-cross-deps`
Do not forget to pass the `--seed $SEE_NUMBER` that makes your tests suites fail

Example:

```shell
    $ TEST_FILES="$(find . -name test/*_test.rb)"
    $ rake test TEST="$TEST_FILES" TESTOPTS="--save-cross-deps --seed 12345"
```

Then replay the cross dependencies tests:

```shell
    $ minitest_random_failures --report
```

It will run your tests against an algorith (TODO: create more algorithm than the basic one) 


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hallelujah/minitest-random_failures. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hallelujah/minitest-random_failures/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the Minitest::RandomFailures project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hallelujah/minitest-random_failures/blob/master/CODE_OF_CONDUCT.md).
