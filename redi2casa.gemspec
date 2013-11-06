# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redi2casa/version'

Gem::Specification.new do |spec|
  spec.name          = "redi2casa"
  spec.version       = Redi2casa::VERSION
  spec.authors       = ["vireshas"]
  spec.email         = ["asviresh@gmail.com"]
  spec.description   = %q{Providing Redis data-structures using Cassandra}
  spec.summary       = %q{Moving redis calls to equivalent cassandra calls can be a pain unless you use this gem}
  spec.homepage      = "https://github.com/vireshas/redi2casa"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cassandra-cql"
end
