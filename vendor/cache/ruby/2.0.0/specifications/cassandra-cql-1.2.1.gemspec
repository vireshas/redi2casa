# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cassandra-cql"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kelley Reynolds"]
  s.date = "2013-07-22"
  s.description = "CQL Interface to Cassandra"
  s.email = ["kelley.reynolds@rubyscale.com"]
  s.homepage = "http://code.google.com/a/apache-extras.org/p/cassandra-ruby/"
  s.require_paths = ["lib"]
  s.rubyforge_project = "cassandra-cql"
  s.rubygems_version = "2.0.3"
  s.summary = "CQL Interface to Cassandra"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<yard>, [">= 0.7.2"])
      s.add_runtime_dependency(%q<simple_uuid>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<thrift_client>, ["< 0.9", ">= 0.7.1"])
    else
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<yard>, [">= 0.7.2"])
      s.add_dependency(%q<simple_uuid>, [">= 0.2.0"])
      s.add_dependency(%q<thrift_client>, ["< 0.9", ">= 0.7.1"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.6.0"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<yard>, [">= 0.7.2"])
    s.add_dependency(%q<simple_uuid>, [">= 0.2.0"])
    s.add_dependency(%q<thrift_client>, ["< 0.9", ">= 0.7.1"])
  end
end
