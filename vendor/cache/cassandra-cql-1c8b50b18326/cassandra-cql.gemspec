# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cassandra-cql"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kelley Reynolds"]
  s.date = "2013-11-07"
  s.description = "CQL Interface to Cassandra"
  s.email = ["kelley.reynolds@rubyscale.com"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "cassandra-cql.gemspec", "lib/cassandra-cql.rb", "lib/cassandra-cql/0.8.rb", "lib/cassandra-cql/0.8/result.rb", "lib/cassandra-cql/0.8/statement.rb", "lib/cassandra-cql/1.0.rb", "lib/cassandra-cql/1.0/result.rb", "lib/cassandra-cql/1.0/statement.rb", "lib/cassandra-cql/1.1.rb", "lib/cassandra-cql/1.1/result.rb", "lib/cassandra-cql/1.1/statement.rb", "lib/cassandra-cql/1.2.rb", "lib/cassandra-cql/1.2/result.rb", "lib/cassandra-cql/1.2/statement.rb", "lib/cassandra-cql/collections/list.rb", "lib/cassandra-cql/collections/map.rb", "lib/cassandra-cql/collections/set.rb", "lib/cassandra-cql/database.rb", "lib/cassandra-cql/result.rb", "lib/cassandra-cql/row.rb", "lib/cassandra-cql/schema.rb", "lib/cassandra-cql/statement.rb", "lib/cassandra-cql/types/abstract_type.rb", "lib/cassandra-cql/types/ascii_type.rb", "lib/cassandra-cql/types/boolean_type.rb", "lib/cassandra-cql/types/bytes_type.rb", "lib/cassandra-cql/types/date_type.rb", "lib/cassandra-cql/types/decimal_type.rb", "lib/cassandra-cql/types/double_type.rb", "lib/cassandra-cql/types/float_type.rb", "lib/cassandra-cql/types/integer_type.rb", "lib/cassandra-cql/types/long_type.rb", "lib/cassandra-cql/types/utf8_type.rb", "lib/cassandra-cql/types/uuid_type.rb", "lib/cassandra-cql/utility.rb", "lib/cassandra-cql/uuid.rb", "lib/cassandra-cql/version.rb", "spec/column_family_spec.rb", "spec/comparator_spec.rb", "spec/conf/0.8/cassandra.in.sh", "spec/conf/0.8/cassandra.yaml", "spec/conf/0.8/log4j-server.properties", "spec/conf/0.8/schema.txt", "spec/conf/1.0/cassandra.in.sh", "spec/conf/1.0/cassandra.yaml", "spec/conf/1.0/log4j-server.properties", "spec/conf/1.0/schema.txt", "spec/conf/1.1/cassandra.in.sh", "spec/conf/1.1/cassandra.yaml", "spec/conf/1.1/log4j-server.properties", "spec/conf/1.1/schema.json", "spec/conf/1.1/schema.txt", "spec/conf/1.2/cassandra.in.sh", "spec/conf/1.2/cassandra.yaml", "spec/conf/1.2/log4j-server.properties", "spec/conf/1.2/schema.json", "spec/conf/1.2/schema.txt", "spec/database_spec.rb", "spec/misc_spec.rb", "spec/result_spec.rb", "spec/row_spec.rb", "spec/rowkey_spec.rb", "spec/schema_spec.rb", "spec/spec_helper.rb", "spec/statement_spec.rb", "spec/utility_spec.rb", "spec/uuid_spec.rb", "spec/validation_spec.rb", "vendor/0.8/gen-rb/cassandra.rb", "vendor/0.8/gen-rb/cassandra_constants.rb", "vendor/0.8/gen-rb/cassandra_types.rb", "vendor/1.0/gen-rb/cassandra.rb", "vendor/1.0/gen-rb/cassandra_constants.rb", "vendor/1.0/gen-rb/cassandra_types.rb", "vendor/1.1/gen-rb/cassandra.rb", "vendor/1.1/gen-rb/cassandra_constants.rb", "vendor/1.1/gen-rb/cassandra_types.rb", "vendor/1.2/gen-rb/cassandra.rb", "vendor/1.2/gen-rb/cassandra_constants.rb", "vendor/1.2/gen-rb/cassandra_types.rb"]
  s.homepage = "http://code.google.com/a/apache-extras.org/p/cassandra-ruby/"
  s.require_paths = ["lib"]
  s.rubyforge_project = "cassandra-cql"
  s.rubygems_version = "1.8.25"
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
