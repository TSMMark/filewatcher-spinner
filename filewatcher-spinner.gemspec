# frozen_string_literal: true

require_relative 'lib/filewatcher/spinner/version'

Gem::Specification.new do |spec|
  spec.name        = 'filewatcher-spinner'
  spec.version     = Filewatcher::Spinner::VERSION
  spec.authors     = ['Alexander Popov']
  spec.email       = ['alex.wayfer@gmail.com']

  spec.summary     = 'An ASCII spinner in console for Filewatcher'
  spec.description = <<~DESC
    An ASCII spinner in console for Filewatcher.
  DESC
  spec.license = 'MIT'

  source_code_uri = 'https://github.com/filewatcher/filewatcher-spinner'

  spec.homepage = source_code_uri

  spec.metadata['source_code_uri'] = source_code_uri

  spec.metadata['homepage_uri'] = spec.homepage

  spec.metadata['changelog_uri'] =
    'https://github.com/filewatcher/filewatcher-spinner/blob/master/CHANGELOG.md'

  spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

  spec.required_ruby_version = '~> 2.4'

  spec.add_runtime_dependency 'filewatcher', '~> 2.0.0.beta1'

  spec.add_development_dependency 'pry-byebug', '~> 3.9' unless RUBY_PLATFORM == 'java'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'gem_toys', '~> 0.4.0'
  spec.add_development_dependency 'toys', '~> 0.11.0'

  spec.add_development_dependency 'codecov', '~> 0.2.1'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'simplecov', '~> 0.19.1'

  spec.add_development_dependency 'rubocop', '~> 1.3'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
