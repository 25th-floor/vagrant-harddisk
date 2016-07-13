# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-harddisk/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-harddisk"
  spec.version       = VagrantPlugins::Harddisk::VERSION
  spec.authors       = ["Martin Prebio"]
  spec.email         = ["mp@25th-floor.com"]

  spec.summary       = "Creates additional harddisks in vagrant machines."
  spec.description   = "Creates additional harddisks in vagrant machines."
  spec.homepage      = "https://github.com/bountin/vagrant-harddisk"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
end
