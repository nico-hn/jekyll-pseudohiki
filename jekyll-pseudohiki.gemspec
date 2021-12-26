# frozen_string_literal: true

require_relative 'lib/jekyll-pseudohiki/version'

Gem::Specification.new do |spec|
  spec.name = 'jekyll-pseudohiki'
  spec.version = Jekyll::PseudoHiki::VERSION
  spec.authors = ['HASHIMOTO, Naoki']
  spec.email = ['hashimoto.naoki@gmail.com']

  spec.summary = 'A Jekyll plugin to convert your post in Hiki notation into HTML.'
  # spec.description = 'TODO: Write a longer description or delete this line.'
  spec.homepage = 'https://github.com/nico-hn/jekyll-pseudohiki'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org/'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  # spec.metadata['changelog_uri'] = 'TODO: Put your gem's CHANGELOG.md URL here.'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'
  spec.add_runtime_dependency 'pseudohikiparser', '0.0.6.develop'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.7'
  spec.add_development_dependency 'yard', '~> 0.9'
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
