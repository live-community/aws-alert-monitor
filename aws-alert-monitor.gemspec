# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws-alert-monitor/version'

Gem::Specification.new do |gem|
  gem.name          = "aws-alert-monitor"
  gem.version       = AwsAlertMonitor::VERSION
  gem.authors       = ["Intuit Inc."]
  gem.email         = ["CTO-DevOpenSource@intuit.com"]
  gem.description   = %q{I watch an SQS queue and escalate alert messages.}
  gem.summary       = %q{I watch an SQS queue and escalate alert messages.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.11.0'

  gem.add_runtime_dependency 'aws-sdk-v1', '~> 1.64.0'
end
