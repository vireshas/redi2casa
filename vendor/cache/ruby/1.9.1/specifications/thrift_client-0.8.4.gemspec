# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "thrift_client"
  s.version = "0.8.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Weaver", "Ryan King", "Jeff Hodges"]
  s.date = "2013-02-26"
  s.homepage = "https://github.com/twitter/thrift_client"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "A Thrift client wrapper that encapsulates some common failover behavior."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thrift>, ["~> 0.8.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mongrel>, ["= 1.2.0.pre2"])
    else
      s.add_dependency(%q<thrift>, ["~> 0.8.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mongrel>, ["= 1.2.0.pre2"])
    end
  else
    s.add_dependency(%q<thrift>, ["~> 0.8.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mongrel>, ["= 1.2.0.pre2"])
  end
end
