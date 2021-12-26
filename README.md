# Jekyll::PseudoHiki

A Jekyll plugin to convert your post in [Hiki notation](https://github.com/hiki/hikidoc/blob/master/TextFormattingRules.md) into HTML.

## Installation

Add these lines to your Jekyll project's Gemfile:

```ruby
git_source(:github) {|repo_name| "https://github.com/#{repo_name}.git" }

group :jekyll_plugins do
  gem "jekyll-pseudohiki", :github => "nico-hn/jekyll-pseudohiki"
end
```

And then execute:

    $ bundle install


## Usage

Save your posts written in Hiki notation with file extension ``.hiki``, then they will be converted into HTML.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nico-hn/jekyll-pseudohiki. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/nico-hn/jekyll-pseudohiki/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jekyll::PseudoHiki project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nico-hn/jekyll-pseudohiki/blob/main/CODE_OF_CONDUCT.md).
