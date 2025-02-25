# coding: utf-8

# rubocop:disable Style/GuardClause

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heimdall_tools/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = 'heimdall_tools'
  spec.version       = HeimdallTools::VERSION
  spec.authors       = ['Robert Thew', 'Rony Xavier', 'Aaron Lippold']
  spec.email         = ['rxavier@mitre.org']
  spec.summary       = 'Convert Forify, Openzap and Sonarqube results to HDF'
  spec.description   = 'Converter utils that can be included as a gem or used from the command line'
  spec.homepage      = 'https://github.com/mitre/heimdall_tools'
  spec.license       = 'Apache-2.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir.glob('{lib,test,exe}/**/*') + %w{CHANGELOG.md Guardfile LICENSE.md Rakefile README.md}
  spec.bindir        = 'exe'
  spec.executables   << 'heimdall_tools'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 4.2.3'
  spec.add_dependency 'colorize', '~> 0'
  spec.add_dependency 'nokogiri', '~> 1.8'
  spec.add_dependency 'nori', '~> 0'
  spec.add_dependency 'OptionParser', '~> 0'
  spec.add_dependency 'thor', '~> 0.19'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry', '~> 0'
  spec.add_dependency 'rake', '~> 10.0'
end
