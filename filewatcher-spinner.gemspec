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

  github_uri = "https://github.com/filewatcher/#{spec.name}"

  spec.homepage = github_uri

  spec.metadata = {
    'bug_tracker_uri' => "#{github_uri}/issues",
    'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
    'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
    'homepage_uri' => spec.homepage,
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => github_uri,
    'wiki_uri' => "#{github_uri}/wiki"
  }

  spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

  spec.required_ruby_version = '>= 2.6', '< 4'

  spec.add_runtime_dependency 'filewatcher', '>= 2.0.0.beta3', '< 3'

  ## Windows requires some additional installations:
  ## ```
  ## Installing byebug 11.1.3 with native extensions
  ## MSYS2 could not be found. Please run 'ridk install'
  ## or download and install MSYS2 manually from https://msys2.github.io/
  ## ```
  unless RUBY_PLATFORM == 'java' || Gem.win_platform?
    spec.add_development_dependency 'pry-byebug', '~> 3.9'
  end

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'bundler-audit', '~> 0.9.0'

  spec.add_development_dependency 'gem_toys', '~> 0.12.1'
  spec.add_development_dependency 'toys', '~> 0.13.0'

  spec.add_development_dependency 'codecov', '~> 0.6.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'

  spec.add_development_dependency 'rubocop', '~> 1.29.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
