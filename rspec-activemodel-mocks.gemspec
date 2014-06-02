# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'rspec/active_model/mocks/version'

Gem::Specification.new do |s|
  s.name        = "rspec-activemodel-mocks"
  s.version     = RSpec::ActiveModel::Mocks::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.license     = "MIT"
  s.authors     = ["David Chelimsky", "Andy Lindeman", "Thomas Holmes"]
  s.email       = "rspec@googlegroups.com"
  s.homepage    = "http://github.com/thomas-holmes/rspec-activemodel-mocks"
  s.summary     = "rspec-activemodel-mocks-#{RSpec::ActiveModel::Mocks::Version::STRING}"
  s.description = "RSpec test doubles for ActiveModel and ActiveRecord"

  s.rubyforge_project = "rspec"

  s.files             = `git ls-files -- lib/*`.split("\n")
  s.files            += %w[README.md License.txt .yardopts]
  s.test_files        = `git ls-files -- {spec,features}/*`.split("\n")
  s.rdoc_options      = ["--charset=UTF-8"]
  s.require_path      = "lib"

  private_key = File.expand_path('~/.gem/rspec-gem-private_key.pem')
  if File.exists?(private_key)
    s.signing_key = private_key
    s.cert_chain = [File.expand_path('~/.gem/rspec-gem-public_cert.pem')]
  end

  s.add_runtime_dependency(%q<activesupport>, [">= 3.0"])
  s.add_runtime_dependency(%q<activemodel>,   [">= 3.0"])
  s.add_runtime_dependency(%q<rspec-mocks>,   ["~> 3.0.0"])

  s.add_development_dependency 'rake',     '~> 10.0.0'
  s.add_development_dependency 'cucumber', '~> 1.3.5'
  s.add_development_dependency 'aruba',    '~> 0.4.11'
  s.add_development_dependency 'ZenTest',  '~> 4.9.5'
  s.add_development_dependency(%q<activerecord>,  [">= 3.0"])
end
