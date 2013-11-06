# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "thrift"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thrift Developers"]
  s.date = "2011-11-26"
  s.description = "Ruby bindings for the Apache Thrift RPC system"
  s.email = ["dev@thrift.apache.org"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG", "README", "ext/binary_protocol_accelerated.c", "ext/compact_protocol.c", "ext/memory_buffer.c", "ext/protocol.c", "ext/strlcpy.c", "ext/struct.c", "ext/thrift_native.c", "ext/binary_protocol_accelerated.h", "ext/compact_protocol.h", "ext/constants.h", "ext/macros.h", "ext/memory_buffer.h", "ext/protocol.h", "ext/strlcpy.h", "ext/struct.h", "ext/extconf.rb", "lib/thrift/client.rb", "lib/thrift/core_ext/fixnum.rb", "lib/thrift/core_ext.rb", "lib/thrift/exceptions.rb", "lib/thrift/processor.rb", "lib/thrift/protocol/base_protocol.rb", "lib/thrift/protocol/binary_protocol.rb", "lib/thrift/protocol/binary_protocol_accelerated.rb", "lib/thrift/protocol/compact_protocol.rb", "lib/thrift/serializer/deserializer.rb", "lib/thrift/serializer/serializer.rb", "lib/thrift/server/base_server.rb", "lib/thrift/server/mongrel_http_server.rb", "lib/thrift/server/nonblocking_server.rb", "lib/thrift/server/simple_server.rb", "lib/thrift/server/thread_pool_server.rb", "lib/thrift/server/threaded_server.rb", "lib/thrift/struct.rb", "lib/thrift/struct_union.rb", "lib/thrift/thrift_native.rb", "lib/thrift/transport/base_server_transport.rb", "lib/thrift/transport/base_transport.rb", "lib/thrift/transport/buffered_transport.rb", "lib/thrift/transport/framed_transport.rb", "lib/thrift/transport/http_client_transport.rb", "lib/thrift/transport/io_stream_transport.rb", "lib/thrift/transport/memory_buffer_transport.rb", "lib/thrift/transport/server_socket.rb", "lib/thrift/transport/socket.rb", "lib/thrift/transport/unix_server_socket.rb", "lib/thrift/transport/unix_socket.rb", "lib/thrift/types.rb", "lib/thrift/union.rb", "lib/thrift.rb"]
  s.files = ["CHANGELOG", "README", "ext/binary_protocol_accelerated.c", "ext/compact_protocol.c", "ext/memory_buffer.c", "ext/protocol.c", "ext/strlcpy.c", "ext/struct.c", "ext/thrift_native.c", "ext/binary_protocol_accelerated.h", "ext/compact_protocol.h", "ext/constants.h", "ext/macros.h", "ext/memory_buffer.h", "ext/protocol.h", "ext/strlcpy.h", "ext/struct.h", "ext/extconf.rb", "lib/thrift/client.rb", "lib/thrift/core_ext/fixnum.rb", "lib/thrift/core_ext.rb", "lib/thrift/exceptions.rb", "lib/thrift/processor.rb", "lib/thrift/protocol/base_protocol.rb", "lib/thrift/protocol/binary_protocol.rb", "lib/thrift/protocol/binary_protocol_accelerated.rb", "lib/thrift/protocol/compact_protocol.rb", "lib/thrift/serializer/deserializer.rb", "lib/thrift/serializer/serializer.rb", "lib/thrift/server/base_server.rb", "lib/thrift/server/mongrel_http_server.rb", "lib/thrift/server/nonblocking_server.rb", "lib/thrift/server/simple_server.rb", "lib/thrift/server/thread_pool_server.rb", "lib/thrift/server/threaded_server.rb", "lib/thrift/struct.rb", "lib/thrift/struct_union.rb", "lib/thrift/thrift_native.rb", "lib/thrift/transport/base_server_transport.rb", "lib/thrift/transport/base_transport.rb", "lib/thrift/transport/buffered_transport.rb", "lib/thrift/transport/framed_transport.rb", "lib/thrift/transport/http_client_transport.rb", "lib/thrift/transport/io_stream_transport.rb", "lib/thrift/transport/memory_buffer_transport.rb", "lib/thrift/transport/server_socket.rb", "lib/thrift/transport/socket.rb", "lib/thrift/transport/unix_server_socket.rb", "lib/thrift/transport/unix_socket.rb", "lib/thrift/types.rb", "lib/thrift/union.rb", "lib/thrift.rb"]
  s.homepage = "http://thrift.apache.org"
  s.licenses = ["Apache 2.0"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Thrift", "--main", "README"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "thrift"
  s.rubygems_version = "1.8.25"
  s.summary = "Ruby bindings for Apache Thrift"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["= 1.3.2"])
      s.add_development_dependency(%q<mongrel>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["= 1.3.2"])
      s.add_dependency(%q<mongrel>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["= 1.3.2"])
    s.add_dependency(%q<mongrel>, [">= 0"])
  end
end
