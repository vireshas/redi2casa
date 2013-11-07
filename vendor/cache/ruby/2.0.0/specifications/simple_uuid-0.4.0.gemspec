# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "simple_uuid"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0.8") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan King, Evan Weaver"]
  s.date = "2013-10-10"
  s.description = "Simple, scalable UUID generation."
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.rdoc", "lib/simple_uuid.rb"]
  s.files = ["CHANGELOG", "LICENSE", "README.rdoc", "lib/simple_uuid.rb"]
  s.homepage = "https://github.com/cassandra-rb/simple_uuid"
  s.licenses = ["Apache"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Simple_uuid", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Simple, scalable UUID generation."
end
